# delete book and play sound
# As: Player

#delete book
item replace entity @s container.0 with minecraft:air

#playsound
execute at @s run playsound block.anvil.use player @a ~ ~ ~ 0.8
