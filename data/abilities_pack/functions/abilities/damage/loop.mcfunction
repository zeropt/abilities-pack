# damage loop
# As: Server

#clear wither effect
execute as @a[scores={damage_cd=20}] run effect clear @s wither

#decrement
execute as @a[scores={damage_cd=0..}] run scoreboard players remove @s damage_cd 1

#clear scoreboard
execute as @a[scores={damage_cd=..-1}] run scoreboard players reset @s damage_cd
