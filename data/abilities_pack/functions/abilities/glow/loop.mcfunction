# Give an entity glowing by using the Glowing tag Loop
# As: Server

#disable glowing
execute as @e[scores={glow_cd=0}] run data merge entity @s {Glowing:0}

#clear scoreboard
scoreboard players reset @e[scores={glow_cd=..0}] glow_cd

#decrement
scoreboard players remove @e[scores={glow_cd=1..}] glow_cd 1
