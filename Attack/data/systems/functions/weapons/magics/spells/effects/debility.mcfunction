# data get
    execute store result score $attack.using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.Debility

# mana check
    execute if score @s manaCounter < $attack.using.mana temporary run tellraw @s {"interpret":true,"nbt":"Main.Weapons.Lack.Mana","storage":"storage:messages"}
    execute if score @s manaCounter < $attack.using.mana temporary run loot give @s loot loots:weapons/spells/mana
    execute if score @s manaCounter < $attack.using.mana temporary run return 0

# vfx
    playsound entity.wither_skeleton.death player @s ~ ~ ~
    particle dust 0 0 0 1 ~ ~ ~ 1 1 1 0.5 100 normal

# call
    execute if entity @s[team=redTeam] run effect give @a[team=blueTeam] wither 10 9 true
    execute if entity @s[team=blueTeam] run effect give @a[team=redTeam] wither 10 9 true

# consume
    function systems:weapons/magics/spells/consume_mana

# break
    function systems:weapons/magics/spells/break
