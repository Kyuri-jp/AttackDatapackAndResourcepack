# data get
    execute store result score $attack.using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.LayerMover

# mana check
    execute if score @s manaCounter < $attack.using.mana temporary run tellraw @s {"interpret":true,"nbt":"Main.Weapons.Lack.Mana","storage":"storage:messages"}
    execute if score @s manaCounter < $attack.using.mana temporary run loot give @s loot loots:weapons/spells/mana
    execute if score @s manaCounter < $attack.using.mana temporary run return 0

# vfx
    playsound entity.enderman.teleport player @s ~ ~ ~
    particle enchant ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    scoreboard players set $attack.magics.spells.layerMover counter 15
    execute unless predicate libs:is_sneaking run function systems:weapons/magics/spells/effects/actions/layer_mover_up
    execute if predicate libs:is_sneaking run function systems:weapons/magics/spells/effects/actions/is_on_ground
    ##retrun
        execute if score $attack.magics.spells.layerMover counter matches ..0 run return 0

    ##teleport
        data modify entity @e[type=area_effect_cloud,tag=weapons.anchor.magics.spells.layerMover,limit=1] Rotation set from entity @s Rotation
        tp @s @e[type=area_effect_cloud,tag=weapons.anchor.magics.spells.layerMover,limit=1]
        kill @e[type=area_effect_cloud,tag=weapons.anchor.magics.spells.layerMover,distance=..0.01]
    ##reset
        scoreboard players reset $attack.magics.spells.layerMover counter

# consume
    function systems:weapons/magics/spells/consume_mana

# break
    function systems:weapons/magics/spells/break
