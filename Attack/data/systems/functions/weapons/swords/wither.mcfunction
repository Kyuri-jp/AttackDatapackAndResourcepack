# action
    effect give @s wither 3 0 false
    execute as @s[team=redTeam] at @s summon wither_skeleton run team join blueTeam @s
    execute as @s[team=blueTeam] at @s summon wither_skeleton run team join redTeam @s
    data modify entity @e[type=wither_skeleton,distance=..0.01,limit=1] CustomName set value "ウィザースケルトン"
    data modify entity @e[type=wither_skeleton,distance=..0.01,limit=1] CustomNameVisible set value true
    data modify entity @e[type=wither_skeleton,distance=..0.01,limit=1] Glowing set value true
    data modify entity @e[type=wither_skeleton,distance=..0.01,limit=1] Health set value 4

# vfx
    particle dust 0 0 0 1 ~ ~1 ~ 0 0 0 0.1 500
    playsound entity.wither.shoot player @s ~ ~ ~
    playsound entity.wither.hurt player @s ~ ~ ~

# revoke
    advancement revoke @s only assets:weapons/swords/wither
