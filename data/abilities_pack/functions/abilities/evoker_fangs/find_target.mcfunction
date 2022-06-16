# Evoker Fang Raycast
# As: Player

#Particle
#particle crit ~ ~ ~ 0 0 0 1 0 normal

#Decrement ray range
scoreboard players remove #abilities_pack apvar_0 1

#check for entity target
execute as @e[tag=!evoker_source,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[tag=!evoker_source,dx=0] run tag @s add evoker_target

# Summon target_cloud
#entity
execute as @e[tag=evoker_target] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["target_cloud"]}
tag @e[tag=evoker_target] remove evoker_target
#block
execute unless entity @e[tag=target_cloud] unless block ~ ~ ~ #abilities_pack:not_fangable run summon area_effect_cloud ~ ~ ~ {Tags:["target_cloud"]}
#final raycast position
execute unless entity @e[tag=target_cloud] if score #abilities_pack apvar_0 matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:["target_cloud"]}

#set apvar_1
execute if entity @e[tag=target_cloud] store result score @s apvar_1 run data get entity @e[tag=target_cloud,limit=1] Pos[1]

#call again
execute unless entity @e[tag=target_cloud] positioned ^ ^ ^0.5 run function abilities_pack:abilities/evoker_fangs/find_target

#kill target_cloud
kill @e[tag=target_cloud]
