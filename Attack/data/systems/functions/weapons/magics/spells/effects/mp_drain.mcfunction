# data get
    execute store result score $attack.using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.MpDrain

# mana check
    execute if score @s manaCounter < $attack.using.mana temporary run tellraw @s {"interpret":true,"nbt":"Main.Weapons.Lack.Mana","storage":"storage:messages"}
    execute if score @s manaCounter < $attack.using.mana temporary run loot give @s loot loots:weapons/spells/mana
    execute if score @s manaCounter < $attack.using.mana temporary run return 0

# vfx
    playsound entity.enderman.teleport player @s ~ ~ ~
    particle dust 0.059 0.576 0.706 1 ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    execute if entity @s[team=redTeam] store result score $attack.magics.spells.mpDrain.count temporary run scoreboard players get @p[team=blueTeam] mp
    execute if entity @s[team=blueTeam] store result score $attack.magics.spells.mpDrain.count temporary run scoreboard players get @p[team=redTeam] mp

    scoreboard players operation @s mp += $attack.magics.spells.mpDrain.count temporary
    function systems:safe_mp

    execute if entity @s[team=redTeam] store result score $attack.magics.spells.mpDrain.count temporary run scoreboard players set @p[team=blueTeam] mp 0
    execute if entity @s[team=blueTeam] store result score $attack.magics.spells.mpDrain.count temporary run scoreboard players set @p[team=redTeam] mp 0

# reset
    scoreboard players reset $attack.magics.spells.mpDrain.count temporary

# consume
    function systems:weapons/magics/spells/consume_mana

# break
    function systems:weapons/magics/spells/break
