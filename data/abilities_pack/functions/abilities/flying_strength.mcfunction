# Give player strength while flying
# As: Player

execute as @s[nbt={FallFlying:0b}] run scoreboard players reset @s flight_dur
execute at @s if predicate abilities_pack:is_in_water run scoreboard players reset @s flight_dur
execute as @s[scores={flight_dur=1000..}] run effect give @s minecraft:strength 1 1 false
