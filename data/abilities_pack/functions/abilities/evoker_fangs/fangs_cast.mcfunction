# raycast to place an evoker_fang
# As: Entity with scoreboard

#get y
summon area_effect_cloud ~ ~ ~ {Tags:["current_y"]}
execute store result score #global temp_global run data get entity @e[type=area_effect_cloud,tag=current_y,limit=1] Pos[1]
kill @e[type=area_effect_cloud,tag=current_y]

#summon fang
execute if block ~ ~ ~ #abilities_pack:nonsolid unless block ~ ~-1 ~ #abilities_pack:nonsolid run summon evoker_fangs ~ ~ ~ {Tags:["new"]}

#set owner
execute as @s[type=player] if entity @e[type=evoker_fangs,tag=new] run data modify entity @e[type=evoker_fangs,tag=new,limit=1] Owner set from entity @s UUID
execute as @s[type=!player] if entity @e[type=evoker_fangs,tag=new] run data modify entity @e[type=evoker_fangs,tag=new,limit=1] Owner set from entity @s Owner
data modify entity @e[type=evoker_fangs,tag=new,limit=1] Rototion set from entity @s Rotation

#call again
execute if score @s temp_y1 < @s temp_y0 unless entity @e[type=evoker_fangs,tag=new] if score #global temp_global < @s temp_y0 positioned ~ ~1 ~ run function abilities_pack:abilities/evoker_fangs/fangs_cast
execute unless score @s temp_y1 < @s temp_y0 unless entity @e[type=evoker_fangs,tag=new] if score #global temp_global > @s temp_y0 positioned ~ ~-1 ~ run function abilities_pack:abilities/evoker_fangs/fangs_cast

#remove tag
tag @e[type=evoker_fangs,tag=new] remove new