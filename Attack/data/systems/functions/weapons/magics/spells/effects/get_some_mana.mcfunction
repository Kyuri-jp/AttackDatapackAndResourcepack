# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.GetSomeMana

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

# vfx
    playsound entity.experience_orb.pickup player @s ~ ~ ~
    particle witch ~ ~ ~ 1 1 1 0.5 200 normal

# call
    loot give @s loot assets:spells/get_some_mana

# consume
    function systems:weapons/magics/spells/effects/common/finish