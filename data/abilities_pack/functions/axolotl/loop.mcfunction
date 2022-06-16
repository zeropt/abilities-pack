# Axolotl Loop
# As: Tagged Player

#tag in water
function abilities_pack:abilities/tag_in_water
function abilities_pack:abilities/tag_in_rain

#effects
effect clear @s minecraft:mining_fatigue
effect give @s minecraft:water_breathing 1 0 true
execute as @s[tag=!in_water] run attribute @s minecraft:generic.movement_speed base set 0.085
execute as @s[tag=in_water] run attribute @s minecraft:generic.movement_speed base set 0.1

#tag playing_dead
execute if predicate abilities_pack:is_sneaking if predicate abilities_pack:activator_in_mainhand run tag @s add q_playing_dead
execute if predicate abilities_pack:is_sneaking if predicate abilities_pack:placeholder_in_mainhand run tag @s add q_playing_dead

#play dead
execute as @s[tag=q_playing_dead,tag=!playing_dead] run function abilities_pack:abilities/axolotl_heal/start
execute as @s[tag=q_playing_dead,tag=!playing_dead] run tag @s add playing_dead
execute as @s[tag=playing_dead] run function abilities_pack:abilities/axolotl_heal
execute as @s[tag=!q_playing_dead,tag=playing_dead] run function abilities_pack:abilities/axolotl_heal/stop
execute as @s[tag=!q_playing_dead,tag=playing_dead] run tag @s remove playing_dead
tag @s remove q_playing_dead

#Float in Water
execute unless predicate abilities_pack:is_sneaking unless predicate abilities_pack:is_swimming run function abilities_pack:abilities/float_in_water

#dry out
execute as @s[tag=in_water] run scoreboard players set @s wet_cd 1200
execute as @s[tag=in_rain] run scoreboard players set @s wet_cd 1200
scoreboard players set #abilities_pack apvar_0 0
execute store result score #abilities_pack apvar_0 run advancement revoke @s only abilities_pack:drank_water
execute if score #abilities_pack apvar_0 matches 1 run scoreboard players set @s wet_cd 1200
function abilities_pack:axolotl/drying_effects

#heal friends
function abilities_pack:abilities/heal_friends

# on activate
execute as @s[tag=in_water,tag=trigger_act] run function abilities_pack:axolotl/activate

# reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
