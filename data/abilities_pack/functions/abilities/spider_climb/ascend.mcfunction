# spider climb ascend
# As: Player

#levitation effect
effect give @s levitation 1 3 true

#Playsound
execute if score @s playsound_cd matches ..0 run function abilities_pack:abilities/spider_climb/sound
