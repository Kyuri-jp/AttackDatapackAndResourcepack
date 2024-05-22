# action
    effect give @s wither 3 0 false
    execute as @s[team=RedTeam] at @s summon wither_skeleton run team join BlueTeam @s
    execute as @s[team=BlueTeam] at @s summon wither_skeleton run team join RedTeam @s
    execute as @e[type=wither_skeleton,distance=..0.01] run data modify entity @s CustomName set value "ウィザースケルトン"
    execute as @e[type=wither_skeleton,distance=..0.01] run data modify entity @s CustomNameVisible set value true
    execute as @e[type=wither_skeleton,distance=..0.01] run data modify entity @s Glowing set value true
    execute as @e[type=wither_skeleton,distance=..0.01] run data modify entity @s Health set value 4
    execute as @e[type=wither_skeleton,distance=..0.01] run effect give @s strength infinite 1

# vfx
    particle dust 0 0 0 1 ~ ~1 ~ 0 0 0 0.1 500
    playsound entity.wither.shoot player @s ~ ~ ~
    playsound entity.wither.hurt player @s ~ ~ ~
