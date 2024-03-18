#> Const
# @private
    #declare score_holder #Const.Two

#> AddMp
# @private
    #declare score_holder #Magic.Spell.Transaction.AddMp

# mana check
    execute if score @s ManaCounter matches ..1 run tellraw @s {"translate":"info.weapons.magics.lack.enoughMana","bold": true}
    execute if score @s ManaCounter matches ..1 run loot give @s loot assets:weapons/spells/mana
    execute if score @s ManaCounter matches ..1 run return fail

# data get
    execute store result score #Const.Two Temporary run data get storage attack:registry Main.Const.Two
    scoreboard players operation #Magic.Spell.Transaction.AddMp Temporary = @s ManaCounter
    scoreboard players operation #Magic.Spell.Transaction.AddMp Temporary /= #Const.Two Temporary


# vfx
    playsound entity.enderman.ambient player @s ~ ~ ~
    particle enchant ~ ~ ~ 1 1 1 0.5 100 normal

# call
    scoreboard players operation @s MpMax += #Magic.Spell.Transaction.AddMp Temporary

# consume
    clear @s arrow{Mana:true}

# break
    function systems:weapons/magics/spells/break

# reset
    scoreboard players reset #Const.Two Temporary
    scoreboard players reset #Magic.Spell.Transaction.AddMp Temporary