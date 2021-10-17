# Bat Loop
# As: Player

#effects
#effect give @s hunger 1 0 true
effect give @s weakness 1 0 true
#effect give @s speed 1 0 true

#Blinded by the light!
execute at @s unless predicate abilities_pack:is_bright run effect clear @s blindness
execute at @s if predicate abilities_pack:is_bright run effect give @s blindness 20 0 true

#Permanent armor
execute unless entity @s[nbt={Inventory:[{Slot:102b}]}] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Bat Tunic"}',color:0},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
#execute unless entity @s[nbt={Inventory:[{Slot:101b}]}] run item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Bat Pants"}',color:0},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute unless entity @s[nbt={Inventory:[{Slot:100b}]}] run item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Bat Boots"}',color:0},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

#bat locate
execute as @s[tag=trigger_act] run function abilities_pack:abilities/bat_locate
execute as @s[tag=trigger_act] run scoreboard players set @s activate_cd 40
execute as @s[tag=trigger_act] run tag @s remove active
execute as @s[tag=trigger_act] run clear @s warped_fungus_on_a_stick{activator:1b}

#flying
execute if predicate abilities_pack:in_mainhand at @s if block ~ ~-0.01 ~ #abilities_pack:nonsolid run tag @s add flying
execute as @s[tag=flying] at @s unless block ~ ~-0.01 ~ #abilities_pack:nonsolid run effect clear @s levitation
execute as @s[tag=flying] at @s unless block ~ ~-0.01 ~ #abilities_pack:nonsolid run tag @s remove flying
execute as @s[tag=flying] unless predicate abilities_pack:in_mainhand run function abilities_pack:abilities/safe_landing
execute as @s[tag=flying] unless predicate abilities_pack:in_mainhand run tag @s remove flying

execute as @s[tag=flying] run function abilities_pack:abilities/bat_levitation
execute as @s[tag=!flying] run scoreboard players set @s temp_global 0

#reactivate
execute if score @s activate_cd matches ..0 run tag @s add active
