# make hostile mobs forget forget player
# As: Player

#join forget
team join forget

tag @s add target

execute at @s as @e[type=#abilities_pack:forget_meable,distance=..32] run team join forget

tag @s remove target
