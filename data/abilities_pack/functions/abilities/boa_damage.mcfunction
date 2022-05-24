# If hurt by bane of arthropods, give poison effect
# As: Player

#Check for hurt_by_boa advancement
scoreboard players set #global temp_global 0
execute store success score #global temp_global run advancement revoke @s only abilities_pack:hurt_by_boa

#give effect
execute if score #global temp_global matches 1 run effect give @s wither 1 4 true
