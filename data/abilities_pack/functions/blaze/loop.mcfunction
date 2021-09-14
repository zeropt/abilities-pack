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
execute if score @s activate_cd matches 1.. if predicate abilities_pack:in_slot run item replace entity @s hotbar.0 with stick{display:{Name:'{"text":"Cooldown"}'},CustomModelData:0,activator:1b,Enchantments:[{}]}
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_slot run clear @s stick{activator:1b}

#set cooldown
execute as @s[tag=used_ability] run scoreboard players set @s activate_cd 100
tag @s[tag=used_ability] remove used_ability
