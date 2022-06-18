# Become an Iron Golem
# As: Player

#Iron Golem ID:8
scoreboard players set @s ability_id 8

#title
title @s title "Iron Golem"

#playsound
execute at @s run playsound entity.iron_golem.repair player @a ~ ~ ~ 1.0

#activator
scoreboard players set @s act_target 1

#clear hit entity advancement
advancement revoke @s only abilities_pack:hit_entity

#attributes
attribute @s minecraft:generic.attack_damage base set 5.0
attribute @s minecraft:generic.knockback_resistance base set 1.0
attribute @s minecraft:generic.max_health base set 30.0
attribute @s minecraft:generic.movement_speed base set 0.07
