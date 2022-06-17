# Enderman activate
# As: Player

scoreboard players set @s activate_cd 60
scoreboard players set @s act_target 0

#remove data from ender_pearl
execute as @e[type=ender_pearl,nbt={Item:{tag:{activator:1b}}}] run data merge entity @s {Item:{tag:{CustomModelData:0}}}
