# data get
    execute store result score #Magic.Using.Mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.RandomSpellChance

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score #Magic.Spell.LackMana temporary matches 1 run return 0

# vfx
    playsound block.chest.open player @s ~ ~ ~
    particle composter ~ ~ ~ 1 1 1 0.5 200 normal

# call
    loot give @s loot assets:weapons/spells/spells

# consume
    function systems:weapons/magics/spells/effects/common/finish