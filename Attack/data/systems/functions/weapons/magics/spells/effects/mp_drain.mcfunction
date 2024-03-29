#> systems:weapons/magics/spells/effects/mp_drain

#> Score Holder
# @private
    #declare score_holder $Magic.Spell.MpDrain.Count

# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.MpDrain

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

# vfx
    playsound entity.enderman.teleport player @s ~ ~ ~
    particle dust 0.059 0.576 0.706 1 ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    execute if entity @s[team=RedTeam] store result score $Magic.Spell.MpDrain.Count Temporary run scoreboard players get @p[team=BlueTeam] Mp
    execute if entity @s[team=BlueTeam] store result score $Magic.Spell.MpDrain.Count Temporary run scoreboard players get @p[team=RedTeam] Mp

    scoreboard players operation @s Mp += $Magic.Spell.MpDrain.Count Temporary
    function systems:util/safe_mp

    execute if entity @s[team=RedTeam] store result score $Magic.Spell.MpDrain.Count Temporary run scoreboard players set @p[team=BlueTeam] Mp 0
    execute if entity @s[team=BlueTeam] store result score $Magic.Spell.MpDrain.Count Temporary run scoreboard players set @p[team=RedTeam] Mp 0

# reset
    scoreboard players reset $Magic.Spell.MpDrain.Count Temporary

# consume
    function systems:weapons/magics/spells/effects/common/finish