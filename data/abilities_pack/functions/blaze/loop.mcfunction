# Blaze Loop
# As: Player

#Give Fire Resistance
effect give @s minecraft:fire_resistance 1 0 true

#Water Damage
function abilities_pack:traits/tag_in_water
execute unless entity @s[tag=!in_water,tag=!in_rain] run function abilities_pack:traits/damage

#Particles
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_mainhand at @s run function abilities_pack:blaze/particles

#Cooldown stick
execute if score @s activate_cd matches 1.. if predicate abilities_pack:in_slot run item replace entity @s hotbar.0 with stick{display:{Name:'{"text":"Cooldown"}'},CustomModelData:0,activator:1b,Enchantments:[{}]}
execute as @a if score @s activate_cd matches 0 if predicate abilities_pack:in_slot run clear @s stick{activator:1b}

#Detect tagged snowballs and fire fireball
execute at @s as @e[type=minecraft:snowball,nbt={Item:{tag:{activator:1b}}},limit=1,sort=nearest,distance=..2] at @s run function abilities_pack:blaze/launch_small_fireball
execute as @e[type=minecraft:snowball,nbt={Item:{tag:{activator:1b}}}] at @s as @a[scores={ability_id=1},distance=..2] run scoreboard players set @s activate_cd 100
execute at @s run kill @e[type=minecraft:snowball,nbt={Item:{tag:{activator:1b}}},limit=1,sort=nearest,distance=..2]
execute as @e[type=minecraft:small_fireball] at @s run kill @s[y=512,dy=0]
