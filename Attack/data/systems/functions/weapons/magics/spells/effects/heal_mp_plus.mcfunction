# data get
    execute store result score #Magic.Using.Mana temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.HealMpPlus

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score #Magic.Spell.LackMana temporary matches 1 run return fail

# vfx
    playsound entity.experience_orb.pickup player @s ~ ~ ~
    particle end_rod ~ ~ ~ 1 1 1 0.5 50 normal

# call
    scoreboard players add @s mp 50
    function systems:util/safe_mp

# consume
    function systems:weapons/magics/spells/effects/common/finish