# Dragon Loop
# As: Tagged Player

#end crystal healing
function abilities_pack:abilities/end_crystal_heal

#more arrow damage
function abilities_pack:abilities/more_arrow_damage

#dragon ramming
execute unless predicate abilities_pack:is_sneaking run function abilities_pack:abilities/dragon_ram

#custom model data while sneaking
execute as @s[predicate=abilities_pack:in_slot] run function abilities_pack:dragon/set_data

#boost and cloud
execute as @s[tag=trigger_act] run function abilities_pack:dragon/activate

#reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
