# data get
    execute store result score $attack.using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.WitherSkeletonRemover

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score $attack.weapons.magics.books.lackMp temporary matches 1 run return 0

# vfx
    playsound entity.skeleton.death player @s ~ ~ ~
    particle dust 0 0 0 1 ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    execute if entity @s[team=redTeam] run kill @e[type=wither_skeleton,team=blueTeam]
    execute if entity @s[team=blueTeam] run kill @e[type=wither_skeleton,team=redTeam]

# consume
    function systems:weapons/magics/spells/effects/common/finish