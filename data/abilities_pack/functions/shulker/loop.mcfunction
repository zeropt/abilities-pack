# Shulker Loop
# As: Player

#tag for shell
tag @s remove q_closed
execute if predicate abilities_pack:is_sneaking if predicate abilities_pack:activator_in_mainhand run tag @s add q_closed
execute if predicate abilities_pack:is_sneaking if predicate abilities_pack:placeholder_in_mainhand run tag @s add q_closed

#close and open shulker shell
execute as @s[tag=!closed,tag=q_closed] at @s run playsound entity.shulker.close player @a ~ ~ ~ 1.0
execute as @s[tag=!closed,tag=q_closed] run tag @s add closed
execute as @s[tag=closed,tag=!q_closed] at @s run playsound entity.shulker.open player @a ~ ~ ~ 1.0
execute as @s[tag=closed,tag=!q_closed] run function abilities_pack:abilities/shulker_shell/clear
execute as @s[tag=closed,tag=!q_closed] run tag @s remove closed
execute as @s[tag=closed] run function abilities_pack:abilities/shulker_shell

#update item
execute as @s[tag=!sneaking] if predicate abilities_pack:is_sneaking run scoreboard players set @s act_id 1
execute as @s[tag=!sneaking] if predicate abilities_pack:is_sneaking run tag @s add sneaking
execute as @s[tag=sneaking] unless predicate abilities_pack:is_sneaking run scoreboard players set @s act_id 0
execute as @s[tag=sneaking] unless predicate abilities_pack:is_sneaking run tag @s remove sneaking

#tp away when under health threshold
execute as @s[tag=healthy,scores={health=..9}] run function abilities_pack:shulker/tp

#activate
execute as @s[tag=trigger_act] run function abilities_pack:abilities/shoot_shulker_bullet

#check for existing shulker bullets
tag @s remove bullet_exists
execute at @s as @e[type=minecraft:shulker_bullet] if score @s player_id = @p player_id run tag @p add bullet_exists

#reset cooldown
execute as @s[tag=bullet_exists] run function abilities_pack:shulker/reset_cd

#reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
