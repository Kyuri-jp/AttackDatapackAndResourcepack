#> systems:wait_room/gallery/set_data
#
# ItemDisplayのデータをセットします
#
# @within systems:wait_room/gallery/*

# summon
    execute positioned as @e[type=item,sort=nearest,limit=1] run summon item_display ~ ~ ~ {CustomNameVisible:true,item:{Count:1b},Tags:["Entity.Display.Item.Gallery"]}

# set Datas
    data modify entity @e[type=item_display,tag=Entity.Display.Item.Gallery,sort=nearest,limit=1] item.id set from entity @e[type=item,sort=nearest,limit=1] Item.id
    data modify entity @e[type=item_display,tag=Entity.Display.Item.Gallery,sort=nearest,limit=1] item.tag set from entity @e[type=item,sort=nearest,limit=1] Item.tag
    data modify entity @e[type=item_display,tag=Entity.Display.Item.Gallery,sort=nearest,limit=1] CustomName set from entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name

# kill item
    kill @e[type=item,sort=nearest,limit=1]