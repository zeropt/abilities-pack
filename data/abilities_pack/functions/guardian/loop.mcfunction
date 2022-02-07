# Guardian Loop
# As: Tagged Player

#Water Breathing
effect give @s minecraft:water_breathing 1 0 true

#Slowness out of Water
function abilities_pack:abilities/tag_in_water
execute as @s[tag=!in_water] run effect give @s minecraft:slowness 1 2 true

#flop sound
scoreboard players operation @s temp_y0 = @s temp_y1
execute store result score @s temp_y1 run data get entity @s Motion[1] 100
execute as @s[tag=!in_water,scores={temp_y1=-8..,temp_y0=..-32}] at @s run playsound entity.guardian.flop player @a ~ ~ ~ 0.4

#Float in Water
execute unless predicate abilities_pack:is_sneaking unless predicate abilities_pack:is_swimming run function abilities_pack:abilities/float_in_water

#Aqua Affinity Helmet
execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{trait:1b}}]}] run clear @s minecraft:leather_helmet{trait:1b}
execute unless entity @s[nbt={Inventory:[{Slot:103b}]}] run item replace entity @s armor.head with minecraft:leather_helmet{display:{color:1481884},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1s}]} 1

#Depth Strider Boots
execute unless entity @s[nbt={Inventory:[{Slot:100b,tag:{trait:1b}}]}] run clear @s minecraft:leather_boots{trait:1b}
execute unless entity @s[nbt={Inventory:[{Slot:100b}]}] run item replace entity @s armor.feet with minecraft:leather_boots{display:{color:1481884},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:depth_strider",lvl:3s}]} 1

#Thorns
execute as @s[predicate=abilities_pack:in_slot] run function abilities_pack:guardian/thorns

##Laser
#Laser duration
execute as @s[tag=trigger_act] run scoreboard players set @s activate_dur 5
execute as @s[scores={activate_dur=1..}] run scoreboard players remove @s activate_dur 1

#if laser is active
tag @s remove target_acquired
execute as @s[predicate=abilities_pack:in_mainhand,scores={activate_dur=1..}] run function abilities_pack:abilities/guardian_ray
tag @s remove guardian_charged
execute as @s[tag=!target_acquired,scores={activate_cd=..20}] run scoreboard players add @s activate_cd 2
execute as @s[scores={activate_dur=1..,activate_cd=..0}] run tag @s add guardian_charged
execute as @s[scores={activate_cd=..0}] run scoreboard players set @s activate_cd 20
