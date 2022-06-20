# Give an entity glowing by using the Glowing tag Loop
# As: Server

#disable glowing
execute as @e[type=#abilities_pack:extra_glowables,scores={glow_cd=0}] run data merge entity @s {Glowing:0}

#clear scoreboard
execute as @e[type=#abilities_pack:extra_glowables,scores={glow_cd=..0}] run scoreboard players reset @s glow_cd

#decrement
execute as @e[type=#abilities_pack:extra_glowables,scores={glow_cd=1..}] run scoreboard players remove @s glow_cd 1

#reschedule loop
schedule function abilities_pack:abilities/glow/loop 4t replace
