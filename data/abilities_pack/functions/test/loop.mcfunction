# Test Loop
# As: Tagged Player

execute as @s if predicate abilities_pack:activator_in_mainhand run function abilities_pack:abilities/spider_climb
execute as @s unless predicate abilities_pack:activator_in_mainhand run function abilities_pack:abilities/spider_climb/stop

# on activate
execute as @s[tag=trigger_act] run function abilities_pack:test/activate

# reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
