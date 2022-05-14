# Guardian Summon a target_id linked damage cloud
# As: Player At: Targeted Entity

#summon cloud
execute as @e[type=!#abilities_pack:undead,type=!area_effect_cloud,distance=0] run summon area_effect_cloud ~ ~ ~ {Radius:0.5f,Duration:6,Tags:["linked_cloud","new_cloud"],Effects:[{Id:7b,Amplifier:1b}]}
execute as @e[type=#abilities_pack:undead,type=!area_effect_cloud,distance=0] run summon area_effect_cloud ~ ~ ~ {Radius:0.5f,Duration:6,Tags:["linked_cloud","new_cloud"],Effects:[{Id:6b,Amplifier:1b}]}

#Set cloud owner
data modify entity @e[tag=new_cloud,limit=1] Owner set from entity @s UUID

#target_id
execute as @e[type=!minecraft:area_effect_cloud,distance=0] unless score @s target_id matches ..2147483647 run scoreboard players add #global target_id 1
execute as @e[type=!minecraft:area_effect_cloud,distance=0] unless score @s target_id matches ..2147483647 run scoreboard players operation @s target_id = #global target_id
scoreboard players operation @e[tag=new_cloud] target_id = @e[type=!minecraft:area_effect_cloud,distance=0] target_id

#remove tag
tag @e[tag=new_cloud] remove new_cloud
