# summon new line head
# As: Current Head

execute at @s rotated as @s positioned ^ ^ ^1 run summon area_effect_cloud ~ ~ ~ {Duration:17,Tags:["fangs_line_head","new"]}
data modify entity @e[type=area_effect_cloud,tag=fangs_line_head,tag=new,limit=1] Owner set from entity @s Owner
data modify entity @e[type=area_effect_cloud,tag=fangs_line_head,tag=new,limit=1] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[type=area_effect_cloud,tag=fangs_line_head,tag=new,limit=1] Age set from entity @s Age
scoreboard players operation @e[type=area_effect_cloud,tag=fangs_line_head,tag=new] apvar_0 = @s apvar_0
scoreboard players operation @e[type=area_effect_cloud,tag=fangs_line_head,tag=new] apvar_1 = @s apvar_1
tag @e[type=area_effect_cloud,tag=fangs_line_head,tag=new] remove new
