# Runs on shulker shell open
# As: Player

#trigger refresh
tag @s add trigger_refresh

#playsound
execute at @s run playsound entity.shulker.open player @a ~ ~ ~ 1.0
