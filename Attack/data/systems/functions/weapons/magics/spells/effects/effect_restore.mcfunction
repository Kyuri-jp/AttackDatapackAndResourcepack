# data get
    execute store result score $attack.using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.EffectRestore

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score $attack.weapons.magics.books.lackMp temporary matches 1 run return 0

# vfx
    playsound block.brewing_stand.brew player @s ~ ~ ~
    particle composter ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    effect clear @s blindness
    effect clear @s darkness
    effect clear @s glowing
    effect clear @s haste
    effect clear @s hunger
    effect clear @s levitation
    effect clear @s nausea
    effect clear @s poison
    effect clear @s slowness
    effect clear @s weakness
    effect clear @s wither

# consume
    function systems:weapons/magics/spells/effects/common/finish