# If hurt by arrow, give poison effect
# As: Player

#Check for hurt by arrow advancement
scoreboard players set #global temp_global 0
execute store success score #global temp_global run advancement revoke @s only abilities_pack:hurt_by_arrow

#give effect
execute if score #global temp_global matches 1 run effect give @s poison 1 4 true
