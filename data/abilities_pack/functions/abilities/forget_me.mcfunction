# make hostile mobs forget forget player
# As: Player

#join forget
team join forget

#add nearby entities that can target
execute at @s as @e[distance=..32,type=#abilities_pack:can_target] run team join forget
