# Guardian Loop
# As: Tagged Player

#Water Breathing
effect give @s minecraft:water_breathing 1 0 true

#Slowness out of Water
function abilities_pack:abilities/tag_in_water
execute as @s[tag=!in_water] run effect give @s minecraft:slowness 1 2 true

#flop sound
scoreboard players operation @s apvar_0 = @s apvar_1
execute store result score @s apvar_1 run data get entity @s Motion[1] 100
execute as @s[tag=!in_water,scores={apvar_1=-8..,apvar_0=..-32}] at @s run playsound entity.guardian.flop player @a ~ ~ ~ 0.4

#Float in Water
execute unless predicate abilities_pack:is_sneaking unless predicate abilities_pack:is_swimming run function abilities_pack:abilities/float_in_water

#Thorns
execute as @s[tag=!sneaking] if predicate abilities_pack:is_sneaking run tag @s add trigger_refresh
execute as @s[tag=!sneaking] if predicate abilities_pack:is_sneaking run tag @s add sneaking
execute as @s[tag=sneaking] unless predicate abilities_pack:is_sneaking run tag @s add trigger_refresh
execute as @s[tag=sneaking] unless predicate abilities_pack:is_sneaking run tag @s remove sneaking

##Laser
#Laser duration
execute as @s[tag=trigger_act] run scoreboard players set @s activate_dur 5
execute as @s[scores={activate_dur=1..}] run scoreboard players remove @s activate_dur 1

#if laser is active
tag @s remove target_acquired
execute as @s[predicate=abilities_pack:activator_in_mainhand,scores={activate_dur=1..}] run function abilities_pack:abilities/guardian_ray
tag @s remove guardian_charged
execute as @s[tag=!target_acquired,scores={activate_cd=..18}] run scoreboard players add @s activate_cd 2
execute as @s[scores={activate_dur=1..,activate_cd=..0}] run tag @s add guardian_charged
execute as @s[scores={activate_cd=..0}] run scoreboard players set @s activate_cd 20
