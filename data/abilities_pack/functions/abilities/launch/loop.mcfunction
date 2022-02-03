# launch loop
# As: Server

#give or remove levitation
effect give @e[scores={launch_cd=1..}] levitation 1 32 true
effect clear @e[scores={launch_cd=0}] levitation

#clear scoreboard
scoreboard players reset @e[scores={launch_cd=..0}] launch_cd

#decrement launch_cd
scoreboard players remove @e[scores={launch_cd=1..}] launch_cd 1
