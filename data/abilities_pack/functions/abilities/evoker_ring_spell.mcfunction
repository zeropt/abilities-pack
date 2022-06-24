# Summon an evoker fang ring attack
# As: Player

#playsound
execute at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 0.8
function abilities_pack:abilities/trigger_vibration

#apvar_0 = Player y
execute store result score @s apvar_0 run data get entity @s Pos[1]

#raycast to set apvar_1
scoreboard players set #abilities_pack apvar_0 32
tag @s add evoker_source
execute at @s anchored eyes rotated as @s run function abilities_pack:abilities/evoker_fangs/find_target
tag @s remove evoker_source

#1 block lower than the lowest target, 1 block higher than the highest target
execute if score @s apvar_1 < @s apvar_0 run scoreboard players remove @s apvar_1 1
execute if score @s apvar_1 < @s apvar_0 run scoreboard players add @s apvar_0 1
execute unless score @s apvar_1 < @s apvar_0 run scoreboard players add @s apvar_1 1
execute unless score @s apvar_1 < @s apvar_0 run scoreboard players remove @s apvar_0 1

#summon
execute at @s run function abilities_pack:abilities/evoker_fangs/place_inner_ring
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["fangs_ring_head","new"]}
data modify entity @e[type=area_effect_cloud,tag=fangs_ring_head,tag=new,limit=1] Owner set from entity @s UUID
data modify entity @e[type=area_effect_cloud,tag=fangs_ring_head,tag=new,limit=1] Rotation[0] set from entity @s Rotation[0]
scoreboard players operation @e[type=area_effect_cloud,tag=fangs_ring_head,tag=new] apvar_0 = @s apvar_0
scoreboard players operation @e[type=area_effect_cloud,tag=fangs_ring_head,tag=new] apvar_1 = @s apvar_1
tag @e[type=area_effect_cloud,tag=fangs_ring_head,tag=new] remove new

#particles
scoreboard players set #abilities_pack apvar_0 100
function abilities_pack:abilities/evoker_fangs/particles
