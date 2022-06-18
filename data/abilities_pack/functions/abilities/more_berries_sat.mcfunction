# If ate berries, give more saturation
# As: Player

#Check for hurt by arrow advancement
scoreboard players set #abilities_pack apvar_0 0
execute store success score #abilities_pack apvar_0 run advancement revoke @s only abilities_pack:ate_berries

#give effect
execute if score #abilities_pack apvar_0 matches 1 run effect give @s saturation 1 4 true
