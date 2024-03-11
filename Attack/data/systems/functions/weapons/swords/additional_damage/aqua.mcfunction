#> systems:weapons/swords/additional_damage/aqua
# @within
#   systems:weapons/swords/additional_damage/aqua
#   systems:weapons/swords/aqua

#> Tag
# @within
#   systems:weapons/swords/additional_damage/aqua
#   systems:weapons/swords/additional_damage/reset/aqua
    #declare tag Player.Sword.Attacker.Aqua

# attacker detect
    execute as @a if score @s PlayerID = @a[tag=Player.Sword.Damaged.Aqua,limit=1] AttackerID run tag @s add Player.Sword.Attacker.Aqua

# damage and vfx
    execute as @a[tag=Player.Sword.Damaged.Aqua] at @s run damage @s 0.2 assets:weapons/swords/aqua by @p[tag=Player.Sword.Attacker.Aqua,distance=0.01..]
    execute as @a[tag=Player.Sword.Damaged.Aqua] at @s run particle falling_water ~ ~1 ~ 0 0 0 0.1 500
    execute as @a[tag=Player.Sword.Damaged.Aqua] at @s run playsound entity.player.splash player @s ~ ~ ~

# add Counter
    scoreboard players add @a[tag=Player.Sword.Damaged.Aqua] Counter 1

# recall
    execute as @a[tag=Player.Sword.Damaged.Aqua,limit=1] unless score @s Counter matches 5.. run schedule function systems:weapons/swords/additional_damage/aqua 1t

# reset
    execute as @a[tag=Player.Sword.Damaged.Aqua,limit=1] if score @s Counter matches 5.. run function systems:weapons/swords/additional_damage/reset/aqua
