#> systems:game/scope_over/

#> score holder
# @private
    #declare score_holder #Player.ScopeOver.HaveAttacker

#> tag
# @private
    #declare tag Player.ScopeOver.Attacker
    #declare tag Anchor.ScopeOver

# detect
    execute as @a at @s if entity @s[team=!watch,team=!preparation,tag=Player.Playing,y=-38,dy=0] if entity @e[type=armor_stand,tag=Anchor.ScopeOver,distance=..40] run scoreboard players set @s ScopeOver 1

# return
    execute as @a at @s if entity @s[team=preparation,tag=Player.Playing,y=-38,dy=0] if entity @e[type=armor_stand,tag=Anchor.ScopeOver,distance=..40] run effect give @s jump_boost 1 255 true
    execute as @a at @s if entity @s[team=preparation,tag=Player.Playing,y=-38,dy=0] if entity @e[type=armor_stand,tag=Anchor.ScopeOver,distance=..40] run tp @s @e[type=armor_stand,tag=Anchor.DefaultSpawnPoint,limit=1]

# message
    execute store success score #Player.ScopeOver.HaveAttacker Temporary on attacker run tag @s add Player.ScopeOver.Attacker

# kill
    execute as @a[scores={ScopeOver=1}] run gamerule showDeathMessages false
    execute as @a[scores={ScopeOver=1}] run kill @s
    execute unless score #Player.ScopeOver.HaveAttacker Temporary matches 1.. as @a[scores={ScopeOver=1}] run tellraw @a {"translate":"death.fell.scope_over","with": [{"selector":"@s"}]}
    execute if score #Player.ScopeOver.HaveAttacker Temporary matches 1.. as @a[scores={ScopeOver=1}] run tellraw @a {"translate":"death.attack.scopre_over","with": [{"selector":"@s"},{"selector":"@a[tag=Player.ScopeOver.Attacker]"}]}
    execute as @a[scores={ScopeOver=1}] run gamerule showDeathMessages true

# reset
    scoreboard players reset @a[scores={ScopeOver=1}] ScopeOver
    execute if score #Player.ScopeOver.HaveAttacker Temporary matches 1.. run scoreboard players reset #Player.ScopeOver.HaveAttacker Temporary
    tag @a[tag=Player.ScopeOver.Attacker] remove Player.ScopeOver.Attacker