# safe landing loop
# As: Server

#give or remove levitation
effect give @a[scores={safe_landing_cd=1..}] levitation 1 0 true
effect clear @a[scores={safe_landing_cd=0}] levitation

#clear scoreboard
scoreboard players reset @a[scores={safe_landing_cd=..0}] safe_landing_cd

#decrement cooldown
scoreboard players remove @a[scores={safe_landing_cd=1..}] safe_landing_cd 1
