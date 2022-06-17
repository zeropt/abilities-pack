# Inventory Update
# As: Player

#Soul Speed Boots
execute unless entity @s[nbt={Inventory:[{Slot:100b,tag:{trait:1b}}]}] run clear @s minecraft:leather_boots{trait:1b}
execute unless entity @s[nbt={Inventory:[{Slot:100b}]}] run item replace entity @s armor.feet with minecraft:leather_boots{display:{color:5592405},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:soul_speed",lvl:1s}]} 1

##Try to Enchant Bow

#apvar_0 = current act_id
scoreboard players operation #abilities_pack apvar_0 = @s act_id

#Power I
execute as @s[scores={act_id=..0},nbt={Inventory:[{Slot:0b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{lvl:1s,id:"minecraft:power"}]}}]}] run scoreboard players set @s act_id 1

#Power II
execute as @s[scores={act_id=..1},nbt={Inventory:[{Slot:0b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{lvl:2s,id:"minecraft:power"}]}}]}] run scoreboard players set @s act_id 2

#Power III
execute as @s[scores={act_id=..2},nbt={Inventory:[{Slot:0b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{lvl:3s,id:"minecraft:power"}]}}]}] run scoreboard players set @s act_id 3

#Power IV
execute as @s[scores={act_id=..3},nbt={Inventory:[{Slot:0b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{lvl:4s,id:"minecraft:power"}]}}]}] run scoreboard players set @s act_id 4

#Power V
execute as @s[scores={act_id=..4},nbt={Inventory:[{Slot:0b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{lvl:5s,id:"minecraft:power"}]}}]}] run scoreboard players set @s act_id 5

execute unless score @s act_id = #abilities_pack apvar_0 run function abilities_pack:stray/enchant
