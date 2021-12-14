# launch loop
# As: Server

execute as @e if score @s launch_cd matches 1.. run effect give @s levitation 1 32 true
execute as @e if score @s launch_cd matches 0 run effect clear @s levitation
execute as @e if score @s launch_cd matches 0.. run scoreboard players remove @s launch_cd 1
