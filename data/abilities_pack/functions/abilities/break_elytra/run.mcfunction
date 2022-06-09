# break chest item
# As: Player

#break item
item modify entity @s armor.chest abilities_pack:no_durability

#playsound
execute at @s run playsound minecraft:entity.item.break player @a ~ ~ ~ 0.4
