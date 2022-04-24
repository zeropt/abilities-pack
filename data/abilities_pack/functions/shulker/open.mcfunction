# Runs on shulker shell open
# As: Player

#trigger inventory update
tag @s add trigger_update

#playsound
execute at @s run playsound entity.shulker.open player @a ~ ~ ~ 1.0
