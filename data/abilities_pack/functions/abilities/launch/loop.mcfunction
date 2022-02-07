# launch loop
# As: Server

#give or remove levitation
execute as @e[scores={launch_cd=1..}] run effect give @s levitation 1 32 true
execute as @e[scores={launch_cd=0}] run effect clear @s levitation

#clear scoreboard
execute as @e[scores={launch_cd=..0}] run scoreboard players reset @s launch_cd

#decrement launch_cd
execute as @e[scores={launch_cd=1..}] run scoreboard players remove @s launch_cd 1
