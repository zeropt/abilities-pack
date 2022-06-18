# create a new tracker at the potion
# As: Potion

# kill old trackers
execute at @s as @e[type=area_effect_cloud,tag=web_tracker] if score @s target_id = @e[type=potion,tag=web_potion,distance=0,limit=1] target_id run kill @s

# summon new cloud
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["web_tracker","new_cloud"]}

# target_id
scoreboard players operation @e[type=area_effect_cloud,tag=new_cloud,limit=1] target_id = @s target_id

# remove new_cloud tag
tag @e[type=area_effect_cloud,tag=new_cloud] remove new_cloud
