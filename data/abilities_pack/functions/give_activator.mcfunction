# Give player the corresponding activator
# As: Player

#Blaze ID:1
execute if score @s ability_id matches 1 run give @s carrot_on_a_stick{display:{Name:'{"text":"Fireball","color":"yellow"}'},CustomModelData:525250,activator:1b} 1

#Enderman ID:2
execute if score @s ability_id matches 2 run give @s ender_pearl{display:{Name:'{"text":"Ender Pearl","color":"light_purple"}'},activator:1b,Enchantments:[{}]} 1