# If hurt by arrow, give poison effect
# As: Player

#Check for hurt by arrow advancement
scoreboard players set @s ability_success 0
execute store success score @s ability_success run advancement revoke @s only abilities_pack:hurt_by_arrow

#give effect
execute if score @s ability_success matches 1 run effect give @s poison 1 4 true
