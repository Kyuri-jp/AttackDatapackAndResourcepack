# data get
    execute store result score $using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.RandomSwordChance

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score $weapons.magics.books.lackMp temporary matches 1 run return 0

# vfx
    playsound block.chest.open player @s ~ ~ ~
    particle composter ~ ~ ~ 1 1 1 0.5 200 normal

# call
    loot give @s loot assets:weapons/swords/swords

# consume
    function systems:weapons/magics/spells/effects/common/finish