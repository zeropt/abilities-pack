# launch loop
# As: Server

#remove levitation
execute as @e[scores={launch_cd=0}] run effect clear @s levitation

#clear scoreboard
execute as @e[scores={launch_cd=..0}] run scoreboard players reset @s launch_cd

#decrement launch_cd
execute as @e[scores={launch_cd=1..}] run scoreboard players remove @s launch_cd 1

#reschedule function
schedule function abilities_pack:abilities/launch/loop 2t replace
