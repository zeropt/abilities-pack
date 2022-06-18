# Spider Loop
# As: Player

#Give Effects
effect clear @s poison
execute at @s unless predicate abilities_pack:is_dark run effect give @s weakness 1 0 true
execute at @s if predicate abilities_pack:is_dark run effect give @s hunger 1 2 true
function abilities_pack:abilities/spider_effect

#boa damage
function abilities_pack:abilities/boa_damage

#climb
execute as @s if predicate abilities_pack:activator_in_mainhand run function abilities_pack:abilities/spider_climb
execute as @s if predicate abilities_pack:placeholder_in_mainhand run function abilities_pack:abilities/spider_climb
execute as @s unless predicate abilities_pack:activator_in_mainhand unless predicate abilities_pack:placeholder_in_mainhand run function abilities_pack:abilities/spider_climb/stop

#activate
execute as @s[tag=trigger_act] run function abilities_pack:spider/activate

#reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
