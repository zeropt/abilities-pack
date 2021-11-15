# Llama inventory loop
# As: Player

#summon new inventory if player doesn't have one
execute at @s as @e[type=chest_minecart,tag=llama_inventory] if score @s player_id = @p player_id run tag @p add has_inventory
execute as @s[tag=!has_inventory] run function abilities_pack:abilities/llama_inventory/summon
tag @s remove has_inventory

#follow the player
execute at @s as @e[type=chest_minecart,tag=llama_inventory,tag=!hidden] if score @s player_id = @p player_id run tp @s ~ ~ ~
execute at @s as @e[type=chest_minecart,tag=llama_inventory,tag=hidden] if score @s player_id = @p player_id run tp @s ~ 1024 ~
