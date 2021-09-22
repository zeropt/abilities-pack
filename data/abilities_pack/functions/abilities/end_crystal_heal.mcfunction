# End crystals heal the player
# As: Player

#tag valid crystal
execute at @s as @e[type=end_crystal,limit=1,sort=nearest,distance=..32] run tag @s add healer

#set BeamTarget
#execute at @s as @e[type=end_crystal,tag=healer] run data modify entity @s BeamTarget.X set from entity @p Pos[0]
#execute at @s as @e[type=end_crystal,tag=healer] run data modify entity @s BeamTarget.Y set from entity @p Pos[1]
#execute at @s as @e[type=end_crystal,tag=healer] run data modify entity @s BeamTarget.Z set from entity @p Pos[2]

#heal player
execute if entity @e[type=end_crystal,tag=healer] if score @s crystal_regen_cd matches 0 run effect give @s regeneration 11 0 false
execute if entity @e[type=end_crystal,tag=healer] if score @s crystal_regen_cd matches 0 run scoreboard players set @s crystal_regen_cd 100

#remove tag
execute as @e[type=end_crystal,tag=healer] run tag @s remove healer
