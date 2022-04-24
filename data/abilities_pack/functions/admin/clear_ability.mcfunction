# Clear player ability
# As: Player

#clear objectives
scoreboard players set @s ability_id 0
scoreboard players set @s activate_cd 0
scoreboard players set @s act_target 0
scoreboard players set @s damage_cd 0
scoreboard players set @s playsound_cd 0
scoreboard players set @s crystal_regen_cd 0
scoreboard players set @s launch_cd 0
scoreboard players set @s boost_cd 0
scoreboard players set @s safe_landing_cd 0
scoreboard players set @s health_tracker 0
scoreboard players set @s glow_cd 0

#clear activators
function abilities_pack:clear_activators

#clear traits
function abilities_pack:clear_traits

#kill rain_test armor_stands
execute at @s as @e[type=armor_stand,tag=rain_test] if score @s player_id = @p player_id run kill @s

#clear special effects
effect clear @s minecraft:health_boost

#Title
title @s title {"text":"Ability Cleared","color":"red"}
