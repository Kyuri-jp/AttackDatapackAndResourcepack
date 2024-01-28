# data get
    execute store result score $attack.using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.HealMp

# mana check
    execute if score @s manaCounter < $attack.using.mana temporary run tellraw @s {"interpret":true,"nbt":"Main.Weapons.Lack.Mana","storage":"storage:messages"}
    execute if score @s manaCounter < $attack.using.mana temporary run loot give @s loot loots:weapons/spells/mana
    execute if score @s manaCounter < $attack.using.mana temporary run return 0

# vfx
    playsound entity.experience_orb.pickup player @s ~ ~ ~
    particle end_rod ~ ~ ~ 1 1 1 0.5 50 normal

# call
    scoreboard players add @s mp 20
    function systems:safe_mp

# consume
    clear @s arrow{mana:true} 2

# break
    function systems:weapons/magics/spells/break