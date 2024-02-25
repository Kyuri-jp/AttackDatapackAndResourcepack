# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.Underground

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

# vfx
    playsound entity.ender_dragon.ambient player @s ~ ~ ~
    particle dragon_breath ~ ~ ~ 0.2 0.2 0.2 0.2 100 normal

# call
    execute if entity @s[team=RedTeam] at @a[team=BlueTeam] summon wither_skeleton run team join RedTeam
    execute if entity @s[team=BlueTeam] at @a[team=RedTeam] summon wither_skeleton run team join BlueTeam
    execute at @a run data modify entity @e[type=wither_skeleton,distance=..0.01,limit=1] CustomName set value "ウィザースケルトン"
    execute at @a run data modify entity @e[type=wither_skeleton,distance=..0.01,limit=1] CustomNameVisible set value true
    execute at @a run data modify entity @e[type=wither_skeleton,distance=..0.01,limit=1] Glowing set value true

# consume
    function systems:weapons/magics/spells/effects/common/finish