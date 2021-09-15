# Blaze Loop
# As: Player

#give Fire Resistance
effect give @s minecraft:fire_resistance 1 0 true

#water Damage
function abilities_pack:abilities/tag_in_water
execute unless entity @s[tag=!in_water,tag=!in_rain] run function abilities_pack:abilities/damage

#particles
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_mainhand at @s run function abilities_pack:blaze/particles

#cooldown stick
execute if score @s activate_cd matches 1.. if predicate abilities_pack:in_slot run item replace entity @s hotbar.0 with stick{display:{Name:'{"text":"Cooldown"}'},CustomModelData:0,activator:1b}
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_slot run clear @s stick{activator:1b}

#shoot fireball
execute if score @s activate matches 1 if predicate abilities_pack:in_mainhand as @e[type=snowball,nbt={Item:{tag:{activator:1b}}},limit=1,sort=nearest] run function abilities_pack:abilities/small_fireball_replace
execute if score @s activate matches 1 if predicate abilities_pack:in_mainhand run scoreboard players remove @s blaze_ammo 1
execute if score @s blaze_ammo matches 0 run scoreboard players set @s activate_cd 100
execute if score @s blaze_ammo matches 0 run scoreboard players set @s blaze_ammo 3

#ammo
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_slot store result score @s activate_ammo run data get entity @s Inventory[0].Count
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_slot if score @s activate_ammo > @s blaze_ammo run function abilities_pack:clear_activator
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_slot if score @s activate_ammo < @s blaze_ammo run function abilities_pack:give_activator
