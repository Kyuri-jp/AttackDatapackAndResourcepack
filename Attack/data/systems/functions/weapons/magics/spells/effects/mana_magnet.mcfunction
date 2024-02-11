# data get
    execute store result score $attack.using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.ManaMagnet

# mana check
    execute if score @s manaCounter < $attack.using.mana temporary run tellraw @s {"interpret":true,"nbt":"Main.Weapons.Lack.Mana","storage":"storage:messages"}
    execute if score @s manaCounter < $attack.using.mana temporary run loot give @s loot loots:weapons/spells/mana
    execute if score @s manaCounter < $attack.using.mana temporary run return 0

# vfx
    playsound entity.enderman.teleport player @s ~ ~ ~
    particle dust 0.455 0.047 0.427 1 ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    execute if entity @s[team=redTeam] store result score $attack.magics.spells.manaMagnet.count temporary run clear @p[team=blueTeam] arrow{Mana:true}
    execute if entity @s[team=blueTeam] store result score $attack.magics.spells.manaMagnet.count temporary run clear @p[team=redTeam] arrow{Mana:true}

    function systems:weapons/magics/spells/effects/actions/get_mana

    execute if entity @s[team=redTeam] run clear @p[team=blueTeam] arrow{Mana:true}
    execute if entity @s[team=blueTeam] run clear @p[team=redTeam] arrow{Mana:true}

# reset
    scoreboard players reset $attack.magics.spells.manaMagnet.count temporary

# consume
    function systems:weapons/magics/spells/consume_mana

# break
    function systems:weapons/magics/spells/break
