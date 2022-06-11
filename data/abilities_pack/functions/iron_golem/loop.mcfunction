#Iron Golem Loop
# As: Tagged Player

#Golem launch
function abilities_pack:abilities/launch_target

#Poppy
execute as @s[tag=trigger_act] run function abilities_pack:iron_golem/activate

#reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
