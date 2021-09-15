# Clear player ability
# As: Player

scoreboard players set @s ability_id 0

#clear activators
function abilities_pack:clear_activator

#clear traits
clear @s minecraft:leather_helmet{trait:1b}
clear @s minecraft:leather_boots{trait:1b}

#kill rain_test armor_stands
execute at @s as @e[type=armor_stand,tag=rain_test] if score @s player_id = @p player_id run kill @s