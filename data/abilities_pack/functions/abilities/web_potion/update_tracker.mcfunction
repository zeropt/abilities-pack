# follow potion or place a cobweb
# As: Area Effect Cloud

tag @s add this_cloud
execute at @s as @e[type=potion,distance=..20,scores={target_id=..2147483647}] if score @s target_id = @e[type=area_effect_cloud,tag=this_cloud,limit=1] target_id run function abilities_pack:abilities/web_potion/new_tracker
tag @s remove this_cloud

execute at @s unless entity @e[type=area_effect_cloud,tag=new_tracker] run function abilities_pack:abilities/temp_web
tag @e[type=area_effect_cloud,tag=new_tracker] remove new_tracker

kill @s
