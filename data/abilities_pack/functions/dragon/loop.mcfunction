# Dragon Loop
# As: Tagged Player

#permanent elytra
execute unless entity @s[nbt={Inventory:[{Slot:102b}]}] run item replace entity @s armor.chest with elytra{display:{Name:'{"text":"Dragon Wings"}'},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

#end crystal healing
function abilities_pack:abilities/end_crystal_heal

#more arrow damage
function abilities_pack:abilities/more_arrow_damage

#dragon ramming
execute unless predicate abilities_pack:is_sneaking run function abilities_pack:abilities/dragon_ram

#boost and cloud
execute if score @s activate matches 1 run function abilities_pack:abilities/launch_player
execute if score @s activate matches 1 if predicate abilities_pack:is_sneaking run function abilities_pack:abilities/dragon_cloud
execute if score @s activate matches 1 run scoreboard players set @s activate_cd 200
execute if score @s activate matches 1 run tag @s remove active
execute if score @s activate matches 1 run clear @s warped_fungus_on_a_stick{activator:1b}

#reactivate
execute if score @s activate_cd matches 0 run tag @s add active
