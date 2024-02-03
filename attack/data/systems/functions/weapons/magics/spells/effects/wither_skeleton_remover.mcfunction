# data get
    execute store result score $attack.using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.WitherSkeltonRemover

# mana check
    execute if score @s manaCounter < $attack.using.mana temporary run tellraw @s {"interpret":true,"nbt":"Main.Weapons.Lack.Mana","storage":"storage:messages"}
    execute if score @s manaCounter < $attack.using.mana temporary run loot give @s loot loots:weapons/spells/mana
    execute if score @s manaCounter < $attack.using.mana temporary run return 0

# vfx
    playsound entity.skeleton.death player @s ~ ~ ~
    particle dust 0 0 0 1 ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    execute if entity @s[team=redTeam] run kill @e[type=wither_skeleton,team=blueTeam]
    execute if entity @s[team=blueTeam] run kill @e[type=wither_skeleton,team=redTeam]

# consume
    function systems:weapons/magics/spells/consume_mana

# break
    function systems:weapons/magics/spells/break
