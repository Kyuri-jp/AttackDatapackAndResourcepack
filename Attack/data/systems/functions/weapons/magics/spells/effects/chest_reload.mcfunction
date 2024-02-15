# data get
    execute store result score $attack.using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.ChestReload

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score $attack.weapons.magics.books.lackMp temporary matches 1 run return 0

# vfx
    playsound block.chest.locked player @s ~ ~ ~
    particle enchant ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    function systems:preparation/reset

# finish
    function systems:weapons/magics/spells/effects/common/finish
