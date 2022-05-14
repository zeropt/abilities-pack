# new area_effect_cloud at the potion
# As: Potion

# summon new cloud
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["web_tracker","new_cloud","new_tracker"]}

# target_id
scoreboard players operation @e[type=area_effect_cloud,tag=new_cloud,limit=1] target_id = @s target_id

# remove new_cloud tag
tag @e[type=area_effect_cloud,tag=new_cloud] remove new_cloud
