#> systems:weapons/magics/spells/effects/mp_drain

#> score holder
# @private
    #declare score_holder $Magic.Spell.MpDrain.Count

# data get
    execute store result score #Magic.Using.Mana temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.MpDrain

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score #Magic.Spell.LackMana temporary matches 1 run return 0

# vfx
    playsound entity.enderman.teleport player @s ~ ~ ~
    particle dust 0.059 0.576 0.706 1 ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    execute if entity @s[team=redTeam] store result score $Magic.Spell.MpDrain.Count temporary run scoreboard players get @p[team=blueTeam] mp
    execute if entity @s[team=blueTeam] store result score $Magic.Spell.MpDrain.Count temporary run scoreboard players get @p[team=redTeam] mp

    scoreboard players operation @s mp += $Magic.Spell.MpDrain.Count temporary
    function systems:util/safe_mp

    execute if entity @s[team=redTeam] store result score $Magic.Spell.MpDrain.Count temporary run scoreboard players set @p[team=blueTeam] mp 0
    execute if entity @s[team=blueTeam] store result score $Magic.Spell.MpDrain.Count temporary run scoreboard players set @p[team=redTeam] mp 0

# reset
    scoreboard players reset $Magic.Spell.MpDrain.Count temporary

# consume
    function systems:weapons/magics/spells/effects/common/finish