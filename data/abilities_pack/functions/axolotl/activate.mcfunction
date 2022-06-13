# Axolotl activate
# As: Player

scoreboard players set @s activate_cd 120
scoreboard players set @s act_target 0

#effect
effect give @s minecraft:dolphins_grace 1 0 false
effect give @s minecraft:strength 3 1 false

#playsound
execute at @s run playsound entity.axolotl.attack player @a ~ ~ ~ 1.0
