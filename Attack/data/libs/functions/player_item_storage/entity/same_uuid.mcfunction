# detect uuid
    ## 0
        execute store result score @s temporary run data get entity @s UUID[0]
        execute as @e[type=armor_stand,tag=storage.players.items.marker] store result score @s temporary run data get entity @s HandItems[0].tag.PlayerUUID[0]
        execute as @e[type=armor_stand,tag=storage.players.items.marker] if score @s temporary = @a[tag=storage.players.items.get,limit=1] temporary run tag @s add storage.players.items.get.lv1
        scoreboard players reset @e[type=armor_stand,tag=!storage.players.items.get.lv1] temporary

    ## 1
        execute store result score @s temporary run data get entity @s UUID[1]
        execute as @e[type=armor_stand,tag=storage.players.items.marker] store result score @s temporary run data get entity @s HandItems[0].tag.PlayerUUID[1]
        execute as @e[type=armor_stand,tag=storage.players.items.marker] if score @s temporary = @a[tag=storage.players.items.get,limit=1] temporary run tag @s add storage.players.items.get.lv2
        scoreboard players reset @e[type=armor_stand,tag=!storage.players.items.get.lv2] temporary

    ## 2
        execute store result score @s temporary run data get entity @s UUID[2]
        execute as @e[type=armor_stand,tag=storage.players.items.marker] store result score @s temporary run data get entity @s HandItems[0].tag.PlayerUUID[2]
        execute as @e[type=armor_stand,tag=storage.players.items.marker] if score @s temporary = @a[tag=storage.players.items.get,limit=1] temporary run tag @s add storage.players.items.get.lv3
        scoreboard players reset @e[type=armor_stand,tag=!storage.players.items.get.lv2] temporary

    ## 1
        execute store result score @s temporary run data get entity @s UUID[3]
        execute as @e[type=armor_stand,tag=storage.players.items.marker] store result score @s temporary run data get entity @s HandItems[0].tag.PlayerUUID[3]
        execute as @e[type=armor_stand,tag=storage.players.items.marker] if score @s temporary = @a[tag=storage.players.items.get,limit=1] temporary run tag @s add storage.players.items.get.lv4
        scoreboard players reset @e[type=armor_stand,tag=!storage.players.items.get.lv4] temporary

# result
    tag @e[type=armor_stand,tag=storage.players.items.marker,predicate=libs:player_item_storage/have_all_tag] add storage.players.items.marker.here

# reset
    scoreboard players reset @s temporary
