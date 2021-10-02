# Evoker Fangs Loop
# As: Server

execute as @e[type=area_effect_cloud,tag=fangs_line_head] run function abilities_pack:abilities/evoker_fangs/line_cast

execute as @e[type=area_effect_cloud,tag=fangs_ring_head] at @s run function abilities_pack:abilities/evoker_fangs/place_outer_ring
execute as @e[type=area_effect_cloud,tag=fangs_ring_head] run kill @s
