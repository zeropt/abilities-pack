# spider climb ascend
# As: Player

#levitation effect
effect give @s levitation 1 3 true

#Playsound
execute if score @s playsound_cd matches ..0 at @s run playsound minecraft:entity.spider.step player @a ~ ~ ~ 0.2 0.5
execute if score @s playsound_cd matches ..0 run scoreboard players set @s playsound_cd 10
