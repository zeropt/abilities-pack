# If hurt by smite, give poison effect
# As: Player

#Check for hurt_by_smite advancement
scoreboard players set #abilities_pack apvar_0 0
execute store success score #abilities_pack apvar_0 run advancement revoke @s only abilities_pack:hurt_by_smite

#give effect
execute if score #abilities_pack apvar_0 matches 1 run effect give @s poison 1 4 true
