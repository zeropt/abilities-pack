# Dragon Loop
# As: Tagged Player

#dragon ramming
execute unless predicate abilities_pack:is_sneaking run function abilities_pack:abilities/dragon_ram

#custom model data while sneaking
execute as @s[tag=!sneaking] if predicate abilities_pack:is_sneaking at @s run scoreboard players set @s act_id 1
execute as @s[tag=!sneaking] if predicate abilities_pack:is_sneaking run tag @s add sneaking
execute as @s[tag=sneaking] unless predicate abilities_pack:is_sneaking at @s run scoreboard players set @s act_id 0
execute as @s[tag=sneaking] unless predicate abilities_pack:is_sneaking run tag @s remove sneaking
scoreboard players set @s[scores={act_target=0}] act_id 0

#boost and cloud
execute as @s[tag=trigger_act] run function abilities_pack:dragon/activate

#reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
