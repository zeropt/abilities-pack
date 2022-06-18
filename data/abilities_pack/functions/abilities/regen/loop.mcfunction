# regen loop
# As: Server

#decrement
execute as @a[scores={regen_cd=0..}] run scoreboard players remove @s regen_cd 1

#clear scoreboard
execute as @a[scores={regen_cd=..-1}] run scoreboard players reset @s regen_cd
