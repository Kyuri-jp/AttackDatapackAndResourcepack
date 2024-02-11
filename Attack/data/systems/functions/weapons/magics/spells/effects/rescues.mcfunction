# data get
    execute store result score $attack.using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.Rescues

# mana check
    execute if score @s manaCounter < $attack.using.mana temporary run tellraw @s {"interpret":true,"nbt":"Main.Weapons.Lack.Mana","storage":"storage:messages"}
    execute if score @s manaCounter < $attack.using.mana temporary run loot give @s loot loots:weapons/spells/mana
    execute if score @s manaCounter < $attack.using.mana temporary run return 0

# vfx
    playsound block.beacon.deactivate player @s ~ ~ ~
    particle smoke ~ ~ ~ 1 1 1 0.5 100 normal

# call
    execute if entity @s[team=redTeam] run effect give @a[team=blueTeam] weakness 5 10 true
    execute if entity @s[team=blueTeam] run effect give @a[team=redTeam] weakness 5 10 true

# consume
    function systems:weapons/magics/spells/consume_mana

# break
    function systems:weapons/magics/spells/break
