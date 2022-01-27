# Give an entity glowing by using the Glowing tag Loop
# As: Server

#disable glowing
execute as @e if score @s glow_cd matches 0 run data merge entity @s {Glowing:0}

#clear scoreboard
execute as @e if score @s glow_cd matches ..0 run scoreboard players reset @s glow_cd

#decrement
execute as @e if score @s glow_cd matches 1.. run scoreboard players remove @s glow_cd 1
