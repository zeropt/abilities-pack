# Teleport player to a random location
# As: Player
# At: Player

execute store success score #abilities_pack apvar_0 run spreadplayers ~ ~ 0 16 false @s
execute unless score #abilities_pack apvar_0 matches 1 store success score #abilities_pack apvar_0 run spreadplayers ~ ~ 0 16 under 256 false @s
execute unless score #abilities_pack apvar_0 matches 1 store success score #abilities_pack apvar_0 run spreadplayers ~ ~ 0 16 under 128 false @s
execute unless score #abilities_pack apvar_0 matches 1 store success score #abilities_pack apvar_0 run spreadplayers ~ ~ 0 16 under 64 false @s
execute unless score #abilities_pack apvar_0 matches 1 store success score #abilities_pack apvar_0 run spreadplayers ~ ~ 0 16 under 32 false @s
execute unless score #abilities_pack apvar_0 matches 1 store success score #abilities_pack apvar_0 run spreadplayers ~ ~ 0 16 under 0 false @s
execute unless score #abilities_pack apvar_0 matches 1 store success score #abilities_pack apvar_0 run spreadplayers ~ ~ 0 16 under -32 false @s
