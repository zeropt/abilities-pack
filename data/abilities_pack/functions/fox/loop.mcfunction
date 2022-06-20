# Fox Loop
# As: Player

#Give Effects
execute as @s[predicate=abilities_pack:is_sprinting] run function abilities_pack:fox/jump_boost

#berries
function abilities_pack:abilities/more_berries_sat

#speed boost
execute as @s[tag=trigger_act] run function abilities_pack:fox/activate

#reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
