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
    execute unless predicate libs:is_sneaking run function systems:weapons/magics/spells/effects/actions/layer_mover_up
    execute if predicate libs:is_sneaking run function systems:weapons/magics/spells/effects/actions/layer_mover_down
    ##teleport
    tp @s @e[type=area_effect_cloud,tag=attack.anchor.magics.spells.layerMover,limit=1]
    kill @e[type=area_effect_cloud,tag=attack.anchor.magics.spells.layerMover]

# consume
    function systems:weapons/magics/spells/consume_mana

# break
    function systems:weapons/magics/spells/break
