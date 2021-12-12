# Angers all wolves in a certain radius
# As: Player

#tag source
tag @s add wolf_target

#set target
execute at @s as @e[type=wolf,distance=..16,nbt={AngerTime:0}] run data modify entity @s AngryAt set from entity @p UUID
execute at @s as @e[type=wolf,distance=..16,nbt={AngerTime:0}] run data modify entity @s AngerTime set value 500

#remove tag
tag @s remove wolf_target
