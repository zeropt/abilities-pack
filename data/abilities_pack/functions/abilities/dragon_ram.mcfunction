# Launch entities that intersect with the player's hitbox
# As: Player

tag @s add source
execute at @s as @e[tag=!source,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function abilities_pack:abilities/launch_player
#execute at @s anchored eyes run summon area_effect_cloud ^ ^ ^ {Tags:["player_eyes"]}
#execute at @e[tag=player_eyes,limit=1,sort=nearest] as @e[tag=!source,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function abilities_pack:abilities/launch_player
#kill @e[type=area_effect_cloud,tag=player_eyes]
tag @s remove source