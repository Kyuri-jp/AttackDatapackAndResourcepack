# detect
    execute as @a at @s if entity @s[y=-38,dy=0,team=!watch,team=!preparation,tag=game.players.playing] if entity @e[type=armor_stand,tag=game.anchor.players.over.place.kill,distance=..40] run scoreboard players set @s scopeOver 1

# return
    execute as @a at @s if entity @s[y=-38,dy=0,team=preparation,tag=game.players.playing] if entity @e[type=armor_stand,tag=game.anchor.players.over.place.kill,distance=..40] run effect give @s jump_boost 1 255 true
    execute as @a at @s if entity @s[y=-38,dy=0,team=preparation,tag=game.players.playing] if entity @e[type=armor_stand,tag=game.anchor.players.over.place.kill,distance=..40] run tp @s @e[type=armor_stand,tag=game.anchor.set.spawn,limit=1]

# message
    execute store success score $game.scopeOver.attacker temporary on attacker run tag @s add game.players.scopeOver.attacker

# kill
    execute as @a[scores={scopeOver=1}] run gamerule showDeathMessages false
    execute as @a[scores={scopeOver=1}] run kill @s
    execute unless score $game.scopeOver.attacker temporary matches 1.. as @a[scores={scopeOver=1}] run tellraw @a {"translate":"death.fell.scope_over","with": [{"selector":"@s"}]}
    execute if score $game.scopeOver.attacker temporary matches 1.. as @a[scores={scopeOver=1}] run tellraw @a {"translate":"death.attack.scopre_over","with": [{"selector":"@s"},{"selector":"@a[tag=game.players.scopeOver.attacker]"}]}
    execute as @a[scores={scopeOver=1}] run gamerule showDeathMessages true

# reset
    scoreboard players reset @a[scores={scopeOver=1}] scopeOver
    execute if score $game.scopeOver.attacker temporary matches 1.. run scoreboard players reset $game.scopeOver.attacker temporary
    tag @a[tag=game.players.scopeOver.attacker] remove game.players.scopeOver.attacker