# Fox Loop
# As: Player

#tags
execute at @s if predicate abilities_pack:clear_day unless predicate abilities_pack:is_dim run tag @s add too_bright
execute as @s[tag=!too_bright] if predicate abilities_pack:is_sneaking run tag @s add resting

#Give Effects
effect give @s minecraft:luck 2 1 true
execute as @s[predicate=abilities_pack:is_sprinting] run function abilities_pack:fox/jump_boost
execute as @s[tag=too_bright] run function abilities_pack:fox/day_effects

#rest effects
execute as @s[tag=resting,scores={sneak_dur=40..}] run function abilities_pack:fox/rest_effects
execute as @s[tag=!resting] run function abilities_pack:abilities/regen/stop

#clear tags
tag @s remove too_bright
tag @s remove resting

#Anger wolves
function abilities_pack:abilities/anger_wolves

#berries
function abilities_pack:abilities/more_berries_sat

#speed boost
execute as @s[tag=trigger_act] run function abilities_pack:fox/activate

#reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
