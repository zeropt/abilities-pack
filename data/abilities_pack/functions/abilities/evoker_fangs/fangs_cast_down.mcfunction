# raycast to place an evoker_fang
# As: Entity with scoreboard data At: Location

#summon fang
execute if block ~ ~ ~ #abilities_pack:not_fangable unless block ~ ~-1 ~ #abilities_pack:not_fangable run summon evoker_fangs ~ ~ ~ {Tags:["new"]}

#set owner
execute as @s[type=player] if entity @e[type=evoker_fangs,tag=new] run data modify entity @e[type=evoker_fangs,tag=new,limit=1] Owner set from entity @s UUID
execute as @s[type=!player] if entity @e[type=evoker_fangs,tag=new] run data modify entity @e[type=evoker_fangs,tag=new,limit=1] Owner set from entity @s Owner
# data modify entity @e[type=evoker_fangs,tag=new,limit=1] Rototion set from entity @s Rotation

#update y
scoreboard players remove #abilities_pack apvar_0 1

#call again
execute unless entity @e[type=evoker_fangs,tag=new] if score #abilities_pack apvar_0 >= @s apvar_0 positioned ~ ~-1 ~ run function abilities_pack:abilities/evoker_fangs/fangs_cast_down

#remove tag
tag @e[type=evoker_fangs,tag=new] remove new