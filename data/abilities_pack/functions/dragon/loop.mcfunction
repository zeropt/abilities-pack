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
execute as @s[tag=trigger_act] run function abilities_pack:abilities/launch_dragon
execute as @s[tag=trigger_act] if predicate abilities_pack:is_sneaking run function abilities_pack:abilities/dragon_cloud
execute as @s[tag=trigger_act] run scoreboard players set @s activate_cd 200
execute as @s[tag=trigger_act] run tag @s remove active
execute as @s[tag=trigger_act] run clear @s warped_fungus_on_a_stick{activator:1b}

#reactivate
execute if score @s activate_cd matches 0 run tag @s add active
