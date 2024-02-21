# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.Rescues

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score #Magic.Spell.LackMana Temporary matches 1 run return fail

# vfx
    playsound block.beacon.deactivate player @s ~ ~ ~
    particle smoke ~ ~ ~ 1 1 1 0.5 100 normal

# call
    execute if entity @s[team=redTeam] run effect give @a[team=blueTeam] weakness 5 10 true
    execute if entity @s[team=blueTeam] run effect give @a[team=redTeam] weakness 5 10 true

# consume
    function systems:weapons/magics/spells/effects/common/finish