# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.MpEfficiency

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

# vfx
    playsound block.beacon.activate player @s ~ ~ ~
    particle enchant ~ ~ ~ 1 1 1 0.5 100 normal

# call
    scoreboard players add @s MpMax 50

# consume
    function systems:weapons/magics/spells/effects/common/finish