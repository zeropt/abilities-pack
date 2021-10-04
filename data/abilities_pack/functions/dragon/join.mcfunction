# Become a Dragon
# As: Player

#Dragon ID:5
execute if score @s ability_id matches 0 run scoreboard players set @s ability_id 5

#activators
tag @s add active
scoreboard players set @s act_target 1

#set cooldown
scoreboard players set @s activate_cd 0

#clear arrow advancement
advancement revoke @s only abilities_pack:hurt_by_arrow

#objectives
scoreboard objectives add activate_dur dummy
scoreboard players set @s activate_dur 0
