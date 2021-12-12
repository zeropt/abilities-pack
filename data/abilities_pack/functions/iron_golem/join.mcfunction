# Become an Iron Golem
# As: Player

#Iron Golem ID:8
scoreboard players set @s ability_id 8

#title
title @s title "Iron Golem"

#playsound
execute at @s run playsound entity.iron_golem.repair player @a ~ ~ ~ 1.0

#activator
tag @s add active
scoreboard players set @s act_target 1

#set cooldown
scoreboard players set @s activate_cd 0

#clear hit entity advancement
advancement revoke @s only abilities_pack:hit_entity
