# Blaze Loop
# As: Player

#Give Fire Resistance
effect give @s minecraft:fire_resistance 1 0 true

#Water Damage
function abilities_pack:traits/damage_in_water

#Particles
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_mainhand at @s run function abilities_pack:blaze/particles

#Detect tagged snowballs and fire fireball
execute at @s as @e[type=minecraft:snowball,nbt={Item:{tag:{activator:1b}}},limit=1,sort=nearest,distance=..2] at @s run function abilities_pack:blaze/launch_small_fireball
execute as @e[type=minecraft:snowball,nbt={Item:{tag:{activator:1b}}}] at @s as @a[scores={ability_id=1},distance=..2] run scoreboard players set @s activate_cd 100
execute at @s run kill @e[type=minecraft:snowball,nbt={Item:{tag:{activator:1b}}},limit=1,sort=nearest,distance=..2]
execute as @e[type=minecraft:small_fireball] at @s run kill @s[y=512,dy=0]
