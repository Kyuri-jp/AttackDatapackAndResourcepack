# data get
    execute store result score #Magic.Using.Mana temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.ChestReload

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score #Magic.Spell.LackMana temporary matches 1 run return 0

# vfx
    playsound block.chest.locked player @s ~ ~ ~
    particle enchant ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    function systems:game/structure/set/blocks/chests/

# finish
    function systems:weapons/magics/spells/effects/common/finish
