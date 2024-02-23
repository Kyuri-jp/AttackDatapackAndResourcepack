# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.EffectRestore

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

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