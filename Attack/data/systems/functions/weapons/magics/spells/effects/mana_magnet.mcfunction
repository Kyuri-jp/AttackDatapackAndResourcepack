# data get
    execute store result score $using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.ManaMagnet

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score $weapons.magics.books.lackMp temporary matches 1 run return 0

# vfx
    playsound entity.enderman.teleport player @s ~ ~ ~
    particle dust 0.455 0.047 0.427 1 ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    execute if entity @s[team=redTeam] store result score $magics.spells.manaMagnet.count temporary run clear @p[team=blueTeam] arrow{Mana: true}
    execute if entity @s[team=blueTeam] store result score $magics.spells.manaMagnet.count temporary run clear @p[team=redTeam] arrow{Mana: true}

    function systems:weapons/magics/spells/effects/actions/get_mana

    execute if entity @s[team=redTeam] run clear @p[team=blueTeam] arrow{Mana: true}
    execute if entity @s[team=blueTeam] run clear @p[team=redTeam] arrow{Mana: true}

# reset
    scoreboard players reset $magics.spells.manaMagnet.count temporary

# consume
    function systems:weapons/magics/spells/effects/common/finish