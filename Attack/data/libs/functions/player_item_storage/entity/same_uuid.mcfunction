#> libs:player_item_storage/entity/same_uuid
# @within function libs:player_item_storage/get

#> tag
#@within
#   libs:player_item_storage/entity/*
#   libs:player_item_storage/*
    #declare tag Pis.MatchUUID.Lv1
    #declare tag Pis.MatchUUID.Lv2
    #declare tag Pis.MatchUUID.Lv3
    #declare tag Pis.MatchUUID.Lv4
    #declare tag Pis.Marker.Here

# detect uuid
    ## 0
        execute store result score @s temporary run data get entity @s UUID[0]
        execute as @e[type=armor_stand,tag=Pis.Marker] store result score @s temporary run data get entity @s HandItems[0].tag.PlayerUUID[0]
        execute as @e[type=armor_stand,tag=Pis.Marker] if score @s temporary = @a[tag=Pis.MatchUUID,limit=1] temporary run tag @s add Pis.MatchUUID.Lv1
        scoreboard players reset @e[type=armor_stand,tag=!Pis.MatchUUID.Lv1] temporary

    ## 1
        execute store result score @s temporary run data get entity @s UUID[1]
        execute as @e[type=armor_stand,tag=Pis.Marker] store result score @s temporary run data get entity @s HandItems[0].tag.PlayerUUID[1]
        execute as @e[type=armor_stand,tag=Pis.Marker] if score @s temporary = @a[tag=Pis.MatchUUID,limit=1] temporary run tag @s add Pis.MatchUUID.Lv2
        scoreboard players reset @e[type=armor_stand,tag=!Pis.MatchUUID.Lv2] temporary

    ## 2
        execute store result score @s temporary run data get entity @s UUID[2]
        execute as @e[type=armor_stand,tag=Pis.Marker] store result score @s temporary run data get entity @s HandItems[0].tag.PlayerUUID[2]
        execute as @e[type=armor_stand,tag=Pis.Marker] if score @s temporary = @a[tag=Pis.MatchUUID,limit=1] temporary run tag @s add Pis.MatchUUID.Lv3
        scoreboard players reset @e[type=armor_stand,tag=!Pis.MatchUUID.Lv2] temporary

    ## 1
        execute store result score @s temporary run data get entity @s UUID[3]
        execute as @e[type=armor_stand,tag=Pis.Marker] store result score @s temporary run data get entity @s HandItems[0].tag.PlayerUUID[3]
        execute as @e[type=armor_stand,tag=Pis.Marker] if score @s temporary = @a[tag=Pis.MatchUUID,limit=1] temporary run tag @s add Pis.MatchUUID.Lv4
        scoreboard players reset @e[type=armor_stand,tag=!Pis.MatchUUID.Lv4] temporary

# result
    tag @e[type=armor_stand,tag=Pis.Marker,predicate=libs:player_item_storage/have_all_tag] add Pis.Marker.Here
    execute as @e[type=armor_stand,tag=Pis.Marker] run function libs:player_item_storage/entity/remove_all_tag

# reset
    scoreboard players reset @s temporary
