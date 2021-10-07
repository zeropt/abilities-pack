# Main Loop
# As: Player

#New Player
execute as @a unless score @s player_id matches 0.. run function abilities_pack:new_player

#Pick an ability
execute as @a if score @s ability_id matches 0 run scoreboard players enable @s pick_ability 
execute as @a if score @s pick_ability matches 1 run function abilities_pack:admin/ability_selector

#Slot Stick
execute as @a if score @s ability_id matches 1.. unless predicate abilities_pack:in_slot run function abilities_pack:clear_activator
execute as @a if score @s ability_id matches 1.. unless entity @s[nbt={Inventory:[{Slot:0b}]}] unless predicate abilities_pack:in_slot run give @s stick{display:{Name:'{"text":"Ability Slot"}'},CustomModelData:0,activator:1b} 1
execute as @a if score @s ability_id matches 1.. unless entity @s[nbt={Inventory:[{Slot:0b}]}] unless predicate abilities_pack:in_slot run function abilities_pack:clear_activator

#Activator right-click detection
tag @a remove trigger_act
execute as @a if predicate abilities_pack:in_mainhand if score @s coas_counter matches 1.. run tag @s add trigger_act
execute as @a if predicate abilities_pack:in_mainhand if score @s wfoas_counter matches 1.. run tag @s add trigger_act
execute as @a if predicate abilities_pack:in_mainhand if score @s s_counter matches 1.. run tag @s add trigger_act
execute as @a if predicate abilities_pack:in_mainhand if score @s ee_counter matches 1.. run tag @s add trigger_act
execute as @a if predicate abilities_pack:in_mainhand if score @s ep_counter matches 1.. run tag @s add trigger_act
scoreboard players set @a coas_counter 0
scoreboard players set @a wfoas_counter 0
scoreboard players set @a s_counter 0
scoreboard players set @a ee_counter 0
scoreboard players set @a ep_counter 0

#Death detection
tag @a remove died
execute as @a if score @s death_counter matches 1.. run tag @s add died
scoreboard players set @a death_counter 0

#Cooldowns
execute as @a if score @s activate_cd matches 1.. run scoreboard players remove @s activate_cd 1
execute as @a if score @s playsound_cd matches 1.. run scoreboard players remove @s playsound_cd 1
execute as @a if score @s damage_cd matches 1.. run scoreboard players remove @s damage_cd 1
execute as @a if score @s crystal_regen_cd matches 1.. run scoreboard players remove @s crystal_regen_cd 1

#Abilities loops
function abilities_pack:abilities/linked_clouds/loop
function abilities_pack:abilities/evoker_fangs/loop
function abilities_pack:abilities/launch_player/loop

######################################## STARTOF Abilites ########################################

#Test ID:-1
execute as @a if score @s ability_id matches -1 run function abilities_pack:test/loop

#Blaze ID:1
execute as @a if score @s pick_ability matches -1 run function abilities_pack:blaze/join
execute as @a if score @s ability_id matches 1 run function abilities_pack:blaze/loop

#Enderman ID:2
execute as @a if score @s pick_ability matches -2 run function abilities_pack:enderman/join
execute as @a if score @s ability_id matches 2 run function abilities_pack:enderman/loop

#Guardian ID:3
execute as @a if score @s pick_ability matches -3 run function abilities_pack:guardian/join
execute as @a if score @s ability_id matches 3 run function abilities_pack:guardian/loop

#Shulker ID:4
execute as @a if score @s pick_ability matches -4 run function abilities_pack:shulker/join
execute as @a if score @s ability_id matches 4 run function abilities_pack:shulker/loop

#Dragon ID:5
execute as @a if score @s pick_ability matches -5 run function abilities_pack:dragon/join
execute as @a if score @s ability_id matches 5 run function abilities_pack:dragon/loop

#Evoker ID:6
execute as @a if score @s pick_ability matches -6 run function abilities_pack:evoker/join
execute as @a if score @s ability_id matches 6 run function abilities_pack:evoker/loop

######################################## ENDOF Abilities ########################################

#Kill all dropped trait items and activators
kill @e[type=!ender_pearl,nbt={Item:{tag:{activator:1b}}}]
kill @e[nbt={Item:{tag:{trait:1b}}}]

#Reset trigger
execute as @a unless score @s pick_ability matches 0 run scoreboard players reset @s pick_ability

#Replace, Add, Clear Activators
execute as @a[tag=active] run clear @s stick{activator:1b}
execute as @a run scoreboard players set @s act_count 0
execute as @a[tag=active] if predicate abilities_pack:in_slot store result score @s act_count run data get entity @s Inventory[0].Count
execute as @a[tag=active] unless score @s act_count = @s act_target run function abilities_pack:clear_activator
execute as @a[tag=active] unless entity @s[nbt={Inventory:[{Slot:0b}]}] unless score @s act_count = @s act_target run function abilities_pack:fill_activators
execute as @a unless predicate abilities_pack:in_slot run function abilities_pack:clear_activator
