# Shoot Guardian Ray
# As: Player

scoreboard players set #global temp_global 30
tag @s add guardian_source
tag @s remove target_acquired
execute at @s anchored eyes positioned ^ ^ ^0.4 run function abilities_pack:abilities/guardian_ray/raycast
tag @s remove guardian_source

#Playsound
execute if score @s playsound_cd matches ..0 at @s run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.8
execute if score @s playsound_cd matches ..0 run scoreboard players set @s playsound_cd 30
