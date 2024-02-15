# data get
    execute store result score $attack.using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.HealMpPlus

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score $attack.weapons.magics.books.lackMp temporary matches 1 run return 0

# vfx
    playsound entity.experience_orb.pickup player @s ~ ~ ~
    particle end_rod ~ ~ ~ 1 1 1 0.5 50 normal

# call
    scoreboard players add @s mp 50
    function systems:safe_mp

# consume
    function systems:weapons/magics/spells/effects/common/finish