# slow hit entity
# As: Player

#Check for hit entity advancement
scoreboard players set #abilities_pack apvar_0 0
execute store success score #abilities_pack apvar_0 run advancement revoke @s only abilities_pack:hit_entity

#run the raycast
execute if score #abilities_pack apvar_0 matches 1 run function abilities_pack:abilities/slow_target/run
