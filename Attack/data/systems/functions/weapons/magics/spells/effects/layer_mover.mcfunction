#> systems:weapons/magics/spells/effects/layer_mover

#> score holder
# @within
#   systems:weapons/magics/spells/effects/layer_mover
#   systems:weapons/magics/spells/effects/actions/layer_mover/*
    #declare score_holder #Magic.Spell.LayerMover.Scope

#> tag
# @within
#   systems:weapons/magics/spells/effects/layer_mover
#   systems:weapons/magics/spells/effects/actions/layer_mover/*
    #declare tag Anchor.Magic.Spell.LayerMover

# data get
    execute store result score #Magic.Using.Mana temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.LayerMover

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score #Magic.Spell.LackMana temporary matches 1 run return 0

# vfx
    playsound entity.enderman.teleport player @s ~ ~ ~
    particle enchant ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    scoreboard players set #Magic.Spell.LayerMover.Scope counter 15
    execute unless predicate assets:is_sneaking run function systems:weapons/magics/spells/effects/actions/layer_mover/layer_mover_up
    execute if predicate assets:is_sneaking run function systems:weapons/magics/spells/effects/actions/layer_mover/is_on_ground
    ##retrun
        execute if score #Magic.Spell.LayerMover.Scope counter matches ..0 run return 0

    ##teleport
        data modify entity @e[type=area_effect_cloud,tag=Anchor.Magic.Spell.LayerMover,limit=1] Rotation set from entity @s Rotation
        tp @s @e[type=area_effect_cloud,tag=Anchor.Magic.Spell.LayerMover,limit=1]
        kill @e[type=area_effect_cloud,tag=Anchor.Magic.Spell.LayerMover,distance=..0.01]
    ##reset
        scoreboard players reset #Magic.Spell.LayerMover.Scope counter

# consume
    function systems:weapons/magics/spells/effects/common/finish