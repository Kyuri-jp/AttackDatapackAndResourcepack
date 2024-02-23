# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.HealMp

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

# vfx
    playsound entity.experience_orb.pickup player @s ~ ~ ~
    particle end_rod ~ ~ ~ 1 1 1 0.5 50 normal

# call
    scoreboard players add @s Mp 20
    function systems:util/safe_mp

# consume
    function systems:weapons/magics/spells/effects/common/finish