loot give @s loot loots:weapons/spells/mana

scoreboard players remove $attack.magics.spells.manaMagnet.count temporary 1
execute if score $attack.magics.spells.manaMagnet.count temporary matches ..0 run return 0
function systems:weapons/magics/spells/effects/actions/get_mana