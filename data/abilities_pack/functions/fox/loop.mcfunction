# Fox Loop
# As: Player

#Give Effects
effect give @s minecraft:luck 2 1 true
execute as @s[predicate=abilities_pack:is_sprinting] run function abilities_pack:fox/jump_boost
execute at @s if predicate abilities_pack:clear_day unless predicate abilities_pack:is_dim run function abilities_pack:fox/day_effects

#sleep effects
execute as @s[tag=slept] run function abilities_pack:fox/sleep_effects

#Anger wolves
function abilities_pack:abilities/anger_wolves

#speed boost
execute as @s[tag=trigger_act] run function abilities_pack:fox/activate

#reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
