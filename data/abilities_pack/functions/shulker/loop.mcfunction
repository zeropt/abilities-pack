# Shulker Loop
# As: Tagged Player

#effects
execute if predicate abilities_pack:is_sneaking run function abilities_pack:abilities/shulker_shell
execute unless predicate abilities_pack:is_sneaking run function abilities_pack:shulker/not_sneaking

#shulker shell when sneaking
execute as @s[predicate=abilities_pack:in_slot] run function abilities_pack:shulker/set_data

#close and open noise
execute as @s[tag=!closed] if predicate abilities_pack:is_sneaking at @s run playsound entity.shulker.close player @a ~ ~ ~ 1.0
execute as @s[predicate=abilities_pack:is_sneaking] run tag @s add closed
execute as @s[tag=closed] unless predicate abilities_pack:is_sneaking at @s run playsound entity.shulker.open player @a ~ ~ ~ 1.0
execute unless predicate abilities_pack:is_sneaking run tag @s remove closed

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
execute as @s[scores={activate_cd=..0}] run tag @s add active
