# Shoot Guardian Ray
# As: Player

scoreboard players set #abilities_pack apvar_0 30
tag @s add guardian_source
tag @s remove target_acquired
execute at @s anchored eyes positioned ^ ^ ^0.4 run function abilities_pack:abilities/guardian_ray/raycast
tag @s remove guardian_source

#Playsound
execute if score @s playsound_cd matches ..0 run function abilities_pack:abilities/guardian_ray/sound
