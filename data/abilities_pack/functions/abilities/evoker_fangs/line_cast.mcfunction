# summon evoker_fangs and cast a new head
# As: current head

#place fangs in front of the head
execute at @s rotated as @s positioned ^ ^ ^1 run function abilities_pack:abilities/evoker_fangs/place_fangs

#decrement counter
scoreboard players remove @s temp_global 1

#new head
execute if score @s temp_global matches 1.. at @s rotated as @s positioned ^ ^ ^1 run summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:["fangs_line_head","new"]}
execute if score @s temp_global matches 1.. run data modify entity @e[type=area_effect_cloud,tag=fangs_line_head,tag=new,limit=1] Owner set from entity @s Owner
execute if score @s temp_global matches 1.. run data modify entity @e[type=area_effect_cloud,tag=fangs_line_head,tag=new,limit=1] Rotation[0] set from entity @s Rotation[0]
execute if score @s temp_global matches 1.. run scoreboard players operation @e[type=area_effect_cloud,tag=fangs_line_head,tag=new] temp_global = @s temp_global
execute if score @s temp_global matches 1.. run scoreboard players operation @e[type=area_effect_cloud,tag=fangs_line_head,tag=new] temp_y0 = @s temp_y0
execute if score @s temp_global matches 1.. run scoreboard players operation @e[type=area_effect_cloud,tag=fangs_line_head,tag=new] temp_y1 = @s temp_y1
execute if score @s temp_global matches 1.. run tag @e[type=area_effect_cloud,tag=fangs_line_head,tag=new] remove new

#kill current head
kill @s