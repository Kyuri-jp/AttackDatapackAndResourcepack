#> systems:weapons/magics/spells/effects/mp_drain

#> score holder
# @private
    #declare score_holder $Magic.Spell.MpDrain.Count

# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.MpDrain

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score #Magic.Spell.LackMana Temporary matches 1 run return fail

# vfx
    playsound entity.enderman.teleport player @s ~ ~ ~
    particle dust 0.059 0.576 0.706 1 ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    execute if entity @s[team=redTeam] store result score $Magic.Spell.MpDrain.Count Temporary run scoreboard players get @p[team=blueTeam] Mp
    execute if entity @s[team=blueTeam] store result score $Magic.Spell.MpDrain.Count Temporary run scoreboard players get @p[team=redTeam] Mp

    scoreboard players operation @s Mp += $Magic.Spell.MpDrain.Count Temporary
    function systems:util/safe_mp

    execute if entity @s[team=redTeam] store result score $Magic.Spell.MpDrain.Count Temporary run scoreboard players set @p[team=blueTeam] Mp 0
    execute if entity @s[team=blueTeam] store result score $Magic.Spell.MpDrain.Count Temporary run scoreboard players set @p[team=redTeam] Mp 0

# reset
    scoreboard players reset $Magic.Spell.MpDrain.Count Temporary

# consume
    function systems:weapons/magics/spells/effects/common/finish