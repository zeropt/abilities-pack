# sets a potion as web potion
# As: Potion

# tag potion
tag @s add web_potion

# summon area_effect_cloud
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["web_tracker","new_cloud"]}

# target_id
execute unless score @s target_id matches ..2147483647 run function abilities_pack:abilities/assign_target_id
scoreboard players operation @e[type=area_effect_cloud,tag=new_cloud,limit=1] target_id = @s target_id

# remove new_cloud tag
tag @e[type=area_effect_cloud,tag=new_cloud] remove new_cloud

#set data
data merge entity @s {Item:{tag:{CustomModelData:11910}}}
