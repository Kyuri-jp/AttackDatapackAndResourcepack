#> systems:game/structure/set/blocks/chests/break/

#> tag
# @within systems:game/structure/set/blocks/chests/*
    #declare tag Anchor.Chest.Break

#> tag private
# @private 
    #declare tag Entity.Item.Remove

# breakChests
    ## normal chest
        execute as @e[type=text_display,tag=Anchor.Chest.Break] at @s run fill ~3 ~ ~3 ~-3 ~ ~-3 air replace chest

    ## fix chest
        execute at @e[type=armor_stand,tag=Anchor.Chest.Tire3] run fill ~3 ~ ~3 ~-3 ~ ~-3 air replace chest
        execute at @e[type=armor_stand,tag=Anchor.Chest.Tire5] run fill ~3 ~ ~3 ~-3 ~ ~-3 air replace chest

# removeItems
    ## add tag
        execute as @e[type=item] at @s if entity @e[type=text_display,tag=Anchor.Chest.Break,distance=..3] run tag @s add Entity.Item.Remove
        execute as @e[type=item] at @s if entity @e[type=armor_stand,tag=Anchor.Chest.Tire3,distance=..3] run tag @s add Entity.Item.Remove
        execute as @e[type=item] at @s if entity @e[type=armor_stand,tag=Anchor.Chest.Tire5,distance=..3] run tag @s add Entity.Item.Remove
    ## kill
        #items
            kill @e[type=item,tag=Entity.Item.Remove]
        
        #anchors
            kill @e[type=text_display,tag=Anchor.Chest.Break]