# reset
    attribute @s generic.movement_speed base set 0.10000000149011612
    scoreboard players reset @s counter
    scoreboard players reset @s attackerID
    tag @s remove weapons.swords.damage.additional_damage.freeze
    tag @p[distance=0.01..,tag=weapons.swords.attacker.freeze] remove weapons.swords.attacker.freeze
