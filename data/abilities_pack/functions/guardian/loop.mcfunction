# Guardian Loop
# As: Tagged Player

#Water Breathing
effect give @s minecraft:water_breathing 1 0 true

#Slowness out of Water
function abilities_pack:abilities/tag_in_water
execute as @s[tag=!in_water] run effect give @s minecraft:slowness 1 2 true

#Float in Water
execute unless predicate abilities_pack:is_sneaking unless predicate abilities_pack:is_swimming run function abilities_pack:abilities/float_in_water

#Aqua Affinity Helmet
execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{trait:1b}}]}] run clear @s minecraft:leather_helmet{trait:1b}
execute unless entity @s[nbt={Inventory:[{Slot:103b}]}] run item replace entity @s armor.head with minecraft:leather_helmet{display:{color:1481884},Unbreakable:1b,trait:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Enchantments:[{lvl:1s,id:"minecraft:aqua_affinity"}]}}]}] run item modify entity @s armor.head abilities_pack:enchant_aqua_affinity

#Depth Strider Boots
execute unless entity @s[nbt={Inventory:[{Slot:100b,tag:{trait:1b}}]}] run clear @s minecraft:leather_boots{trait:1b}
execute unless entity @s[nbt={Inventory:[{Slot:100b}]}] run item replace entity @s armor.feet with minecraft:leather_boots{display:{color:1481884},Unbreakable:1b,trait:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:100b,tag:{Enchantments:[{lvl:3s,id:"minecraft:depth_strider"}]}}]}] run item modify entity @s armor.feet abilities_pack:enchant_depth_strider

#Thorns
execute if predicate abilities_pack:in_mainhand unless predicate abilities_pack:is_sneaking run item modify entity @s weapon.mainhand abilities_pack:disenchant_thorns
execute if predicate abilities_pack:in_mainhand if predicate abilities_pack:is_sneaking run item modify entity @s weapon.mainhand abilities_pack:enchant_thorns

##Laser
#Laser duration
execute if score @s activate matches 1 run scoreboard players set @s laser_dur 10
execute if score @s laser_dur matches 1.. run scoreboard players remove @s laser_dur 1

#if laser is active
execute unless predicate abilities_pack:see_entity if score @s activate_cd matches ..20 run scoreboard players add @s activate_cd 2
execute if score @s laser_dur matches 1.. if score @s activate_cd matches 0 run tag @s add guardian_charged
execute if score @s laser_dur matches 1.. if predicate abilities_pack:in_mainhand if predicate abilities_pack:see_entity run function abilities_pack:abilities/guardian_ray

execute if score @s activate_cd matches 0 run scoreboard players set @s activate_cd 20

tag @s remove guardian_charged