# Become a Test
# As: Player

#Fox ID:9
scoreboard players set @s ability_id -1

#title
title @s title {"text":"Test","color":"white"}

#playsound
execute at @s run playsound block.anvil.use player @a ~ ~ ~ 1.0

#activators
scoreboard players set @s act_target 1
