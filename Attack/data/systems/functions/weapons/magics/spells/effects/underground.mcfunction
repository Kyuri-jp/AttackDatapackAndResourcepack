# data get
    execute store result score #Magic.Using.Mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.Underground

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score #Magic.Spell.LackMana temporary matches 1 run return 0

# vfx
    playsound entity.ender_dragon.ambient player @s ~ ~ ~
    particle dragon_breath ~ ~ ~ 0.2 0.2 0.2 0.2 100 normal

# call
    execute if entity @s[team=redTeam] at @a[team=blueTeam] summon wither_skeleton run team join redTeam
    execute if entity @s[team=blueTeam] at @a[team=redTeam] summon wither_skeleton run team join blueTeam
    execute at @a run data modify entity @e[type=wither_skeleton,distance=..0.01,limit=1] CustomName set value "ウィザースケルトン"
    execute at @a run data modify entity @e[type=wither_skeleton,distance=..0.01,limit=1] CustomNameVisible set value true
    execute at @a run data modify entity @e[type=wither_skeleton,distance=..0.01,limit=1] Glowing set value true

# consume
    function systems:weapons/magics/spells/effects/common/finish