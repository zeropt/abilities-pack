# safe landing loop
# As: Server

# if has_negative_lev: safe_landing_cd = 10 ticks
execute as @a if predicate abilities_pack:has_negative_lev run scoreboard players set @s safe_landing_cd 9

# if safe_landing_cd >= 1 and has_positive_lev: decrement safe_landing_cd
execute as @a[scores={safe_landing_cd=1..}] if predicate abilities_pack:has_positive_lev run scoreboard players remove @s safe_landing_cd 1

# if on the ground: clear scoreboard
execute as @a[scores={safe_landing_cd=1..}] at @s unless block ~ ~-0.01 ~ #abilities_pack:no_collision run scoreboard players reset @s safe_landing_cd

# clear scoreboard
execute as @a[scores={safe_landing_cd=..0}] run scoreboard players reset @s safe_landing_cd

#if safe_landing: give or remove levitation
execute as @a[tag=safe_landing] run effect clear @s levitation
execute as @a[tag=safe_landing,scores={safe_landing_cd=1..}] run effect give @s levitation 1 0 true

#clear tag
execute as @a[tag=safe_landing] unless score @s safe_landing_cd matches 1.. run tag @s remove safe_landing
