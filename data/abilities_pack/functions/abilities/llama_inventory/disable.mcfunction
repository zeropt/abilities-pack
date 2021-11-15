# Disable the llama inventory
# As: Player

#bring the minecart to the player
execute at @s as @e[type=chest_minecart,tag=llama_inventory] if score @s player_id = @p player_id run tp @s ~ ~ ~

#remove special nbt
execute at @s as @e[type=chest_minecart,tag=llama_inventory] if score @s player_id = @p player_id run data merge entity @s {NoGravity:0b,Silent:0b,Invulnerable:0b}

#remove tag
execute at @s as @e[type=chest_minecart,tag=llama_inventory] if score @s player_id = @p player_id run tag @s remove llama_inventory