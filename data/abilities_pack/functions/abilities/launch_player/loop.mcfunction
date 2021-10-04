# launch_player loop
# As: Server

execute as @e if score @s lev_cd matches 1.. run effect give @s levitation 1 19 true
execute as @e if score @s lev_cd matches 0 run effect clear @s levitation
execute as @e if score @s lev_cd matches 0.. run scoreboard players remove @s lev_cd 1