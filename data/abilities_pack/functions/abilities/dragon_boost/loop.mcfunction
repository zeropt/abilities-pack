# dragon boost loop
# As: Server

#give or clear levitation
effect give @a[scores={boost_cd=1..}] levitation 1 19 true
effect clear @a[scores={boost_cd=0}] levitation

#reset scoreboard
scoreboard players reset @a[scores={boost_cd=..0}] boost_cd

#decrement cooldown
scoreboard players remove @a[scores={boost_cd=1..}] boost_cd 1
