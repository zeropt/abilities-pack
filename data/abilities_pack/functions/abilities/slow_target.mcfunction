# slow hit entity
# As: Player

#Check for hit entity advancement
scoreboard players set #global temp_global 0
execute store success score #global temp_global run advancement revoke @s only abilities_pack:hit_entity

#run the raycast
execute if score #global temp_global matches 1 run function abilities_pack:abilities/slow_target/run
