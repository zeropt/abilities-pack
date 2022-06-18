# damage loop
# As: Server

#clear wither effect
execute as @a[tag=remove_wither] run effect clear @s wither
tag @a[tag=remove_wither] remove remove_wither

#decrement
execute as @a[scores={damage_cd=0..}] run scoreboard players remove @s damage_cd 1

#clear scoreboard
execute as @a[scores={damage_cd=..-1}] run scoreboard players reset @s damage_cd
