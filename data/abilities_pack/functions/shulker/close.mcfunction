# Runs on shulker shell close
# As: Player

#trigger inventory update
tag @s add trigger_update

#playsound
execute at @s run playsound entity.shulker.close player @a ~ ~ ~ 1.0
