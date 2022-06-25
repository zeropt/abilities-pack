# place webs
# At: Location

#stopsound
#stopsound @a[distance=..18] neutral

# web nearby entities
execute as @e[distance=..2,type=!#abilities_pack:not_webable,limit=1,sort=nearest] at @s run function abilities_pack:abilities/temp_web

# else web at location
execute unless entity @e[distance=..2,type=area_effect_cloud,tag=temp_web] run function abilities_pack:abilities/temp_web
