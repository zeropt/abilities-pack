# show player llama inventory
# As: Player

execute at @s as @e[type=chest_minecart,tag=llama_inventory] if score @s player_id = @p player_id run tag @s remove hidden
