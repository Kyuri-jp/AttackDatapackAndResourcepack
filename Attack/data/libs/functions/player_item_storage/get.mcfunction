#> libs:player_item_storage/get
# 保存したInventoryを取得します

#> Tag
# @within
#   libs:player_item_storage/get
#   libs:player_item_storage/entity/same_uuid
    #declare tag Pis.This

# check player
    execute unless entity @s[type=player] run data merge storage error:info {Level:warn,Path:"libs:player_item_storage/get",Message:"実行者がプレイヤーではありません",StackTrace:"Executor isn't player."}
    execute unless entity @s[type=player] run return run function api:system/util/error_notice/

# set player
    tag @s add Pis.This

# search
    function libs:player_item_storage/entity/same_uuid

# give items
    function libs:player_item_storage/inventory/summon

# reset
    kill @e[type=marker,tag=Pis.Marker.Here,limit=1]
    tag @s remove Pis.This