# data get
    execute store result score #Magic.Using.Mana temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.Illumination

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score #Magic.Spell.LackMana temporary matches 1 run return fail

# vfx
    playsound block.beacon.activate player @s ~ ~ ~
    particle end_rod ~ ~ ~ 1 1 1 0.5 100 normal

# call
    execute if entity @s[team=redTeam] run effect give @a[team=blueTeam] glowing 15 0 true
    execute if entity @s[team=blueTeam] run effect give @a[team=redTeam] glowing 15 0 true

# consume
    function systems:weapons/magics/spells/effects/common/finish