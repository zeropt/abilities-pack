# Give an entity glowing by using the Glowing tag Loop
# As: Server

#decrement
execute as @e if score @s glow_cd matches 0.. run scoreboard players remove @s glow_cd 1

#cancel glowing
execute as @e if score @s glow_cd matches 0 run data merge entity @s {Glowing:0}
