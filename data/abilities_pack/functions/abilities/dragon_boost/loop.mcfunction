# dragon boost loop
# As: Server

#give or clear levitation
execute as @e if score @s boost_cd matches 1.. run effect give @s levitation 1 19 true
execute as @e if score @s boost_cd matches 0 run effect clear @s levitation

#reset scoreboard
execute as @e if score @s boost_cd matches ..0 run scoreboard players reset @s boost_cd

#decrement cooldown
execute as @e if score @s boost_cd matches 1.. run scoreboard players remove @s boost_cd 1
