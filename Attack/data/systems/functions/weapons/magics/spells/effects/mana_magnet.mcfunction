#> systems:weapons/magics/spells/effects/mana_magnet

#> score holder
# @within
#   systems:weapons/magics/spells/effects/mana_magnet
#   systems:weapons/magics/spells/effects/actions/get_mana
    #declare score_holder $Magic.Spell.ManaMagnet.Count

# data get
    execute store result score #Magic.Using.Mana temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.ManaMagnet

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score #Magic.Spell.LackMana temporary matches 1 run return fail

# vfx
    playsound entity.enderman.teleport player @s ~ ~ ~
    particle dust 0.455 0.047 0.427 1 ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    execute if entity @s[team=redTeam] store result score $Magic.Spell.ManaMagnet.Count temporary run clear @p[team=blueTeam] arrow{Mana: true}
    execute if entity @s[team=blueTeam] store result score $Magic.Spell.ManaMagnet.Count temporary run clear @p[team=redTeam] arrow{Mana: true}

    function systems:weapons/magics/spells/effects/actions/get_mana

    execute if entity @s[team=redTeam] run clear @p[team=blueTeam] arrow{Mana: true}
    execute if entity @s[team=blueTeam] run clear @p[team=redTeam] arrow{Mana: true}

# reset
    scoreboard players reset $Magic.Spell.ManaMagnet.Count temporary

# consume
    function systems:weapons/magics/spells/effects/common/finish