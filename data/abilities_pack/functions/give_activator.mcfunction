# Give player the corresponding activator
# As: Player

#Test ID:-1
execute if score @s ability_id matches -1 run give @s carrot_on_a_stick{display:{Name:'{"text":"Activator"}'},CustomModelData:0,activator:1b} 1

#Blaze ID:1
execute if score @s ability_id matches 1 run give @s snowball{display:{Name:'{"text":"Fireball","color":"yellow"}'},CustomModelData:0,activator:1b,blaze_ability:1b,Enchantments:[{}]} 1

#Enderman ID:2
execute if score @s ability_id matches 2 run give @s ender_pearl{display:{Name:'{"text":"Ender Pearl","color":"light_purple"}'},CustomModelData:0,activator:1b,Enchantments:[{}]} 1

#Guardian ID:3
execute if score @s ability_id matches 3 run give @s carrot_on_a_stick{display:{Name:'{"text":"Laser"}'},CustomModelData:0,activator:1b} 1

#Shulker ID:4
execute if score @s ability_id matches 4 run give @s carrot_on_a_stick{display:{Name:'{"text":"Shulker Bullet","color":"light_purple"}'},CustomModelData:0,activator:1b} 1
