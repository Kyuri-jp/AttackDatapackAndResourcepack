#> systems:weapons/magics/spells/effects/mana_magnet

#> Score Holder
# @within
#   systems:weapons/magics/spells/effects/mana_magnet
#   systems:weapons/magics/spells/effects/actions/get_mana
    #declare score_holder $Magic.Spell.ManaMagnet.Count

# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.ManaMagnet

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

# vfx
    playsound entity.enderman.teleport player @s ~ ~ ~
    particle dust 0.455 0.047 0.427 1 ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    execute if entity @s[team=RedTeam] store result score $Magic.Spell.ManaMagnet.Count Temporary run clear @p[team=BlueTeam] arrow{Mana: true}
    execute if entity @s[team=BlueTeam] store result score $Magic.Spell.ManaMagnet.Count Temporary run clear @p[team=RedTeam] arrow{Mana: true}

    function systems:weapons/magics/spells/effects/actions/get_mana

    execute if entity @s[team=RedTeam] run clear @p[team=BlueTeam] arrow{Mana: true}
    execute if entity @s[team=BlueTeam] run clear @p[team=RedTeam] arrow{Mana: true}

# reset
    scoreboard players reset $Magic.Spell.ManaMagnet.Count Temporary

# consume
    function systems:weapons/magics/spells/effects/common/finish