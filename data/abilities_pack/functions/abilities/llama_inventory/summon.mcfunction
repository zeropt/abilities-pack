# Summon a new llama inventory
# As: Player

execute at @s run summon chest_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["llama_inventory","new"]}
scoreboard players operation @e[type=chest_minecart,tag=llama_inventory,tag=new] player_id = @s player_id
tag @e[type=chest_minecart,tag=llama_inventory,tag=new] remove new
