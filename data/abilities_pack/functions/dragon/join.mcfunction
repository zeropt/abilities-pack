# Become a Dragon
# As: Player

#Dragon ID:5
scoreboard players set @s ability_id 5

#title
title @s title {"text":"Dragon","color":"light_purple"}

#playsound
execute at @s run playsound entity.ender_dragon.ambient player @a ~ ~ ~ 1.0

#activators
scoreboard players set @s act_target 1

#inventory update
function abilities_pack:dragon/inventory_update

#clear arrow advancement
advancement revoke @s only abilities_pack:hurt_by_arrow

#attributes
attribute @s minecraft:generic.max_health base set 24.0
