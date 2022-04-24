# Shulker Loop
# As: Player

#effects
execute if predicate abilities_pack:is_sneaking run function abilities_pack:abilities/shulker_shell
execute unless predicate abilities_pack:is_sneaking run function abilities_pack:shulker/not_sneaking

#close and open shulker shell
execute as @s[tag=!sneaking] if predicate abilities_pack:is_sneaking at @s run function abilities_pack:shulker/close
execute as @s[tag=!sneaking] if predicate abilities_pack:is_sneaking run tag @s add sneaking
execute as @s[tag=sneaking] unless predicate abilities_pack:is_sneaking at @s run function abilities_pack:shulker/open
execute as @s[tag=sneaking] unless predicate abilities_pack:is_sneaking run tag @s remove sneaking

#tp away when under health threshold
execute as @s[tag=!healthy,scores={health=10..}] run tag @s add healthy
execute as @s[tag=healthy,scores={health=..9}] run function abilities_pack:shulker/tp

#set target
execute as @s[tag=trigger_act] run function abilities_pack:abilities/shoot_shulker_bullet

#check for existing shulker bullets
tag @s remove bullet_exists
execute at @s as @e[type=minecraft:shulker_bullet] if score @s player_id = @p player_id run tag @p add bullet_exists
#reset cooldown
execute as @s[tag=bullet_exists] run function abilities_pack:shulker/reset_cd

#reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
