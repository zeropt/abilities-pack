# End crystals heal the player
# As: Player

#tag valid crystal
#execute at @s as @e[type=end_crystal,distance=..32,limit=1,sort=nearest] run tag @s add healer

#set BeamTarget
#execute at @s as @e[type=end_crystal,tag=healer] run data modify entity @s BeamTarget.X set from entity @p Pos[0]
#execute at @s as @e[type=end_crystal,tag=healer] run data modify entity @s BeamTarget.Y set from entity @p Pos[1]
#execute at @s as @e[type=end_crystal,tag=healer] run data modify entity @s BeamTarget.Z set from entity @p Pos[2]

#heal player
execute at @s as @s[scores={crystal_regen_cd=..0}] if entity @e[type=end_crystal,distance=..32] run function abilities_pack:abilities/end_crystal_heal/give 

#remove tag
#execute as @e[type=end_crystal,tag=healer] run tag @s remove healer
