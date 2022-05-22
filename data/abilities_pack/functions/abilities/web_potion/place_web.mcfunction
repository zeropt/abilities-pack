# place webs
# At: Location

# web nearby entities
execute as @e[distance=..2,type=!#abilities_pack:not_webable] at @s run function abilities_pack:abilities/temp_web

# else web at location
execute unless entity @e[distance=..2,type=area_effect_cloud,tag=temp_web] run function abilities_pack:abilities/temp_web
