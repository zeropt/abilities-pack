# Main Loop
# As: Server

#Pick an ability
execute as @a unless score @s has_ability matches 1 run scoreboard players enable @s pick_ability
execute as @a if score @s pick_ability matches 1.. run function abilities_pack:ability_selector

#Abilities require activator in Slot:0b
execute as @a if score @s has_ability matches 1 unless predicate abilities_pack:in_slot run clear @s carrot_on_a_stick{activator:1b}
execute as @a if score @s has_ability matches 1 unless entity @s[nbt={Inventory:[{Slot:0b}]}] unless predicate abilities_pack:in_slot run function abilities_pack:give_activator
execute as @a if score @s has_ability matches 1 unless entity @s[nbt={Inventory:[{Slot:0b}]}] unless predicate abilities_pack:in_slot run clear @s carrot_on_a_stick{activator:1b}

#Kill all dropped activators
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{activator:1b}}}]

#Activator right-click detection
execute as @a if predicate abilities_pack:in_mainhand if score @s coas_counter matches 1.. run scoreboard players set @s activate 1
scoreboard players set @a coas_counter 0

#Set Durability for cooldown indicator
execute as @a if score @s activate_cd matches 1.. if predicate abilities_pack:in_slot run item modify entity @s hotbar.0 abilities_pack:low_dur
execute as @a if score @s activate_cd matches 0 if predicate abilities_pack:in_slot run item modify entity @s hotbar.0 abilities_pack:full_dur

#Decrement Cooldown
execute as @a if score @s activate_cd matches 1.. run scoreboard players remove @s activate_cd 1

######################################## START Abilites ########################################

#Blaze
execute as @a[tag=blaze] run function abilities_pack:blaze/loop

######################################## END Abilities ########################################
scoreboard players set @a activate 0
