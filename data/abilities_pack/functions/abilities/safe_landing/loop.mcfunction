# safe landing loop
# As: Server

execute as @a if score @s safe_landing_cd matches 1.. run effect give @s levitation 1 0 true
execute as @a if score @s safe_landing_cd matches 0 run effect clear @s levitation
execute as @a if score @s safe_landing_cd matches 0.. run scoreboard players remove @s safe_landing_cd 1