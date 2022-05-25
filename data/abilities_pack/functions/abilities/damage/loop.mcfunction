# damage loop
# As: Server

#decrement
execute as @a[scores={damage_cd=0..}] run scoreboard players remove @s damage_cd 1

#clear scoreboard
execute as @a[scores={damage_cd=..-1}] run scoreboard players reset @s damage_cd
