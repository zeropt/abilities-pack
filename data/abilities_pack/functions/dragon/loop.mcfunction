# Dragon Loop
# As: Tagged Player

#Permanent Elytra
execute unless entity @s[nbt={Inventory:[{Slot:102b}]}] run item replace entity @s armor.chest with elytra{display:{Name:'{"text":"Dragon Wings"}'},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

#cooldown stick
execute if score @s activate_cd matches 1.. if predicate abilities_pack:in_slot run item replace entity @s hotbar.0 with stick{display:{Name:'{"text":"Cooldown"}'},CustomModelData:0,activator:1b}
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_slot run clear @s stick{activator:1b}

#End Crystal Healing
function abilities_pack:abilities/end_crystal_heal

#more arrow damage
function abilities_pack:abilities/more_arrow_damage

#Boost and cloud
execute if score @s activate matches 1 run effect give @s levitation 1 9 true
execute if score @s activate matches 1 if predicate abilities_pack:is_sneaking run function abilities_pack:abilities/dragon_cloud
execute if score @s activate matches 1 run scoreboard players set @s activate_cd 200
