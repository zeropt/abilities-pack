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

#custom model data while sneaking
execute as @s[predicate=abilities_pack:in_mainhand] run function abilities_pack:dragon/set_data

#boost and cloud
execute as @s[tag=trigger_act] run function abilities_pack:dragon/activate

#reactivate
execute as @s[scores={activate_cd=..0}] run tag @s add active
