# Summon an evoker fang at a valid location
# As: Entity with scoreboard data At: xz location

#set the starting location
summon area_effect_cloud ~ ~ ~ {Tags:["start"]}
execute store result entity @e[type=area_effect_cloud,tag=start,limit=1] Pos[1] double 1.0 run scoreboard players get @s temp_y1

#fang_cast
execute at @e[type=area_effect_cloud,tag=start] run function abilities_pack:abilities/evoker_fangs/fangs_cast

#kill start marker
kill @e[type=area_effect_cloud,tag=start]
