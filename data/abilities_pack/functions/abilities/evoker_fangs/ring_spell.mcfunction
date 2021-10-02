# Summon an evoker fang ring attack
# As: Player

#Player y -> temp_y0
execute store result score @s temp_y0 run data get entity @s Pos[1]

#raycast to set temp_y1
scoreboard players set #global temp_global 6
tag @s add evoker_source
execute at @s anchored eyes rotated as @s run function abilities_pack:abilities/evoker_fangs/find_target
tag @s remove evoker_source

#1 block lower than the lowest target, 1 block higher than the highest target
execute if score @s temp_y1 < @s temp_y0 run scoreboard players remove @s temp_y1 1
execute if score @s temp_y1 < @s temp_y0 run scoreboard players add @s temp_y0 1
execute unless score @s temp_y1 < @s temp_y0 run scoreboard players add @s temp_y1 1
execute unless score @s temp_y1 < @s temp_y0 run scoreboard players remove @s temp_y0 1

#summon
execute at @s run function abilities_pack:abilities/evoker_fangs/place_inner_ring
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:["fangs_ring_head","new"]}
data modify entity @e[type=area_effect_cloud,tag=fangs_ring_head,tag=new,limit=1] Owner set from entity @s UUID
data modify entity @e[type=area_effect_cloud,tag=fangs_ring_head,tag=new,limit=1] Rotation[0] set from entity @s Rotation[0]
scoreboard players operation @e[type=area_effect_cloud,tag=fangs_ring_head,tag=new] temp_y0 = @s temp_y0
scoreboard players operation @e[type=area_effect_cloud,tag=fangs_ring_head,tag=new] temp_y1 = @s temp_y1
tag @e[type=area_effect_cloud,tag=fangs_ring_head,tag=new] remove new