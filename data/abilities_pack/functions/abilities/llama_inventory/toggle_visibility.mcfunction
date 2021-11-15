# Toggle llama inventory visibility
# As: Player

execute at @s as @e[type=chest_minecart,tag=llama_inventory,tag=hidden] if score @s player_id = @p player_id run tag @s add show
execute at @s as @e[type=chest_minecart,tag=llama_inventory,tag=!show] if score @s player_id = @p player_id run tag @s add hidden
execute at @s as @e[type=chest_minecart,tag=llama_inventory,tag=show] if score @s player_id = @p player_id run tag @s remove hidden
execute at @s as @e[type=chest_minecart,tag=llama_inventory,tag=show] if score @s player_id = @p player_id run tag @s remove show
