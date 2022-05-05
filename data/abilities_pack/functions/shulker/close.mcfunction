# Runs on shulker shell close
# As: Player

#trigger refresh
tag @s add trigger_refresh

#playsound
execute at @s run playsound entity.shulker.close player @a ~ ~ ~ 1.0
