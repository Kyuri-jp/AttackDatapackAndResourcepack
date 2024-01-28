# data get
    execute store result score $attack.using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.ChestReload

# mana check
    execute if score @s manaCounter < $attack.using.mana temporary run tellraw @s {"interpret":true,"nbt":"Main.Weapons.Lack.Mana","storage":"storage:messages"}
    execute if score @s manaCounter < $attack.using.mana temporary run loot give @s loot loots:weapons/spells/mana
    execute if score @s manaCounter < $attack.using.mana temporary run return 0

# vfx
    playsound block.chest.locked player @s ~ ~ ~
    particle enchant ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    function systems:preparation/reset

# consume
    #using mana-1
    clear @s arrow{mana:true} 4

# break
    function systems:weapons/magics/spells/break