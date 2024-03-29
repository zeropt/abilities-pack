# Summon area effect cloud similar to a fireballs
# As: Player

#summon area_effect_cloud
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dragon_breath",ReapplicationDelay:1,Radius:3f,RadiusPerTick:0.006666667f,Duration:600,WaitTime:20,Tags:["new"],Effects:[{Id:20,Amplifier:6b,Duration:1}]}

#set owner
execute as @e[type=area_effect_cloud,tag=new] at @s run data modify entity @s Owner set from entity @p UUID

#remove tag
tag @e[type=area_effect_cloud,tag=new] remove new

#playsound
execute at @s run playsound entity.ender_dragon.shoot player @a ~ ~ ~ 0.8
