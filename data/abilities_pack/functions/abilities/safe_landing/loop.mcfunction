# safe landing loop
# As: Server

#give or remove levitation
execute as @a[scores={safe_landing_cd=1..}] run effect give @s levitation 1 0 true
execute as @a[scores={safe_landing_cd=0}] run effect clear @s levitation

#clear scoreboard
execute as @a[scores={safe_landing_cd=..0}] run scoreboard players reset @s safe_landing_cd

#decrement cooldown
execute as @a[scores={safe_landing_cd=1..}] run scoreboard players remove @s safe_landing_cd 1
