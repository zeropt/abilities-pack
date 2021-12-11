# Clear player ability
# As: Player

scoreboard players set @s ability_id 0

#clear activators
function abilities_pack:clear_activator

#clear traits
function abilities_pack:clear_traits

#kill rain_test armor_stands
execute at @s as @e[type=armor_stand,tag=rain_test] if score @s player_id = @p player_id run kill @s

#disable llama inventories
function abilities_pack:abilities/llama_inventory/disable

#clear special effects
effect clear @s minecraft:health_boost