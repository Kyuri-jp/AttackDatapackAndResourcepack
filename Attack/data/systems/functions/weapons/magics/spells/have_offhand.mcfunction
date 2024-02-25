#> systems:weapons/magics/spells/have_offhand
#
# オフハンドに呪文を所持した場合の処理
#
# @handles systems:tick/as_at

# summon null
    summon item ~ ~ ~ {Item:{Count: 1b, id: "stick", tag: {display: {Name: '{"text": "Item Of Null"}'}}},PickupDelay:0s}

# set data
    data modify entity @e[type=item,distance=..0.01,limit=1] Item set from entity @s Inventory[{Slot:-106b}]

# remove item
    item replace entity @s weapon.offhand with air
