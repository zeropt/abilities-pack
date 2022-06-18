# Fox activate
# As: Player

scoreboard players set @s activate_cd 260
scoreboard players set @s act_target 0

#effect
effect give @s minecraft:speed 5 2 false

#playsound
execute at @s run playsound entity.fox.ambient player @a ~ ~ ~ 0.8
