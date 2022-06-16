# Become a Stray
# As: Player

#Stray ID:12
scoreboard players set @s ability_id 12

#title
title @s title {"text":"Stray","color":"dark_gray"}

#playsound
execute at @s run playsound entity.stray.ambient player @a ~ ~ ~ 1.0

#advancements
advancement revoke @s only abilities_pack:hurt_by_smite
advancement revoke @s only abilities_pack:hit_entity

#activators
scoreboard players set @s act_target 1
