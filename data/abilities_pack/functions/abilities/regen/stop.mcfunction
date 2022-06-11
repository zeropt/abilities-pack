# stop regen
# As: Player

#clear effect
execute if score @s regen_cd matches ..2147483647 run effect clear @s regeneration

#clear scoreboard
scoreboard players reset @s regen_cd
