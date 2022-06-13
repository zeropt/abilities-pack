# Main Loop
# As: Player

#New Player
execute as @a unless score @s player_id matches 0.. run function abilities_pack:new_player

#Pick an ability
execute as @a[scores={ability_id=0}] run scoreboard players enable @s pick_ability
execute as @a[scores={pick_ability=1..}] run function abilities_pack:admin/ability_selector

#Activator right-click detection
tag @a[tag=trigger_act] remove trigger_act
execute as @a[tag=in_mainhand] run function abilities_pack:activation
execute as @a[scores={coas_counter=1..}] run scoreboard players set @s coas_counter 0
execute as @a[scores={wfoas_counter=1..}] run scoreboard players set @s wfoas_counter 0
execute as @a[scores={s_counter=1..}] run scoreboard players set @s s_counter 0
execute as @a[scores={ee_counter=1..}] run scoreboard players set @s ee_counter 0
execute as @a[scores={ep_counter=1..}] run scoreboard players set @s ep_counter 0
execute as @a[scores={poppy_counter=1..}] run scoreboard players set @s poppy_counter 0
execute as @a[scores={sp_counter=1..}] run scoreboard players set @s sp_counter 0
execute as @a[tag=in_mainhand] run tag @s remove in_mainhand
execute as @a[predicate=abilities_pack:activator_in_mainhand] run tag @s add in_mainhand

#Respawn detection
execute as @e[type=player,tag=died] run function abilities_pack:respawn
execute as @e[type=player,tag=died] run tag @s remove died
execute as @a[scores={death_counter=1..}] run tag @s add died
execute as @a[scores={death_counter=1..}] run scoreboard players set @s death_counter 0

#Sleep detection
execute as @a[tag=slept] run tag @s remove slept
execute as @a[scores={sleep_counter=1..}] run tag @s add slept
execute as @a[scores={sleep_counter=1..}] run scoreboard players set @s sleep_counter 0

#Sneak duration
# execute as @a[scores={sneak_dur=0}] run scoreboard players reset @s sneak_dur
# execute as @a[scores={sneak_dur=2..}] unless predicate abilities_pack:is_sneaking run scoreboard players set @s sneak_dur 0
# execute as @a[scores={sneak_dur=1..}] unless predicate abilities_pack:is_sneaking run scoreboard players reset @s sneak_dur
execute as @a unless predicate abilities_pack:is_sneaking run scoreboard players reset @s sneak_dur

#Cooldowns
execute as @a[scores={activate_cd=0..}] run scoreboard players remove @s activate_cd 1
execute as @a[scores={playsound_cd=0..}] run scoreboard players remove @s playsound_cd 1
execute as @a[scores={wet_cd=0..}] run scoreboard players remove @s wet_cd 1

#Abilities loops
function abilities_pack:abilities/dragon_boost/loop
function abilities_pack:abilities/evoker_fangs/loop
function abilities_pack:abilities/glow/loop
function abilities_pack:abilities/launch/loop
function abilities_pack:abilities/linked_clouds/loop
function abilities_pack:abilities/safe_landing/loop
function abilities_pack:abilities/web_potion/loop
function abilities_pack:abilities/temp_web/loop
function abilities_pack:abilities/regen/loop
function abilities_pack:abilities/damage/loop
function abilities_pack:abilities/forget_me/loop

######################################## STARTOF Abilities ########################################

#Test ID:-1
execute as @a[scores={ability_id=-1}] run function abilities_pack:test/loop

#Blaze ID:1
execute as @a[scores={ability_id=0,pick_ability=-1}] run function abilities_pack:blaze/join
execute as @a[scores={ability_id=1}] run function abilities_pack:blaze/loop

#Enderman ID:2
execute as @a[scores={ability_id=0,pick_ability=-2}] run function abilities_pack:enderman/join
execute as @a[scores={ability_id=2}] run function abilities_pack:enderman/loop

#Guardian ID:3
execute as @a[scores={ability_id=0,pick_ability=-3}] run function abilities_pack:guardian/join
execute as @a[scores={ability_id=3}] run function abilities_pack:guardian/loop

#Shulker ID:4
execute as @a[scores={ability_id=0,pick_ability=-4}] run function abilities_pack:shulker/join
execute as @a[scores={ability_id=4}] run function abilities_pack:shulker/loop

#Dragon ID:5
execute as @a[scores={ability_id=0,pick_ability=-5}] run function abilities_pack:dragon/join
execute as @a[scores={ability_id=5}] run function abilities_pack:dragon/loop

#Evoker ID:6
execute as @a[scores={ability_id=0,pick_ability=-6}] run function abilities_pack:evoker/join
execute as @a[scores={ability_id=6}] run function abilities_pack:evoker/loop

#Bat ID:7
execute as @a[scores={ability_id=0,pick_ability=-7}] run function abilities_pack:bat/join
execute as @a[scores={ability_id=7}] run function abilities_pack:bat/loop

#Iron Golem ID:8
execute as @a[scores={ability_id=0,pick_ability=-8}] run function abilities_pack:iron_golem/join
execute as @a[scores={ability_id=8}] run function abilities_pack:iron_golem/loop

#Fox ID:9
execute as @a[scores={ability_id=0,pick_ability=-9}] run function abilities_pack:fox/join
execute as @a[scores={ability_id=9}] run function abilities_pack:fox/loop

#Spider ID:10
execute as @a[scores={ability_id=0,pick_ability=-10}] run function abilities_pack:spider/join
execute as @a[scores={ability_id=10}] run function abilities_pack:spider/loop

#Axolotl ID:11
execute as @a[scores={ability_id=0,pick_ability=-11}] run function abilities_pack:axolotl/join
execute as @a[scores={ability_id=11}] run function abilities_pack:axolotl/loop

######################################## ENDOF Abilities ########################################

#remove data from ender pearls, kill snowballs
execute as @e[type=ender_pearl,nbt={Item:{tag:{activator:1b}}}] run data merge entity @s {Item:{tag:{CustomModelData:0}}}
execute as @e[type=snowball,nbt={Item:{tag:{activator:1b}}}] run kill @s

#Reset trigger
execute as @a unless score @s ability_id matches 0 run scoreboard players reset @s pick_ability

#trigger_update on update, trigger_refresh
execute as @a unless score @s act_target = @s prev_act_target run tag @s add trigger_update
execute as @a run scoreboard players operation @s prev_act_target = @s act_target
execute as @a[tag=trigger_refresh] run tag @s add trigger_update

#if trigger_update manage inventory
execute as @a[tag=trigger_update] run function abilities_pack:manage_inventory

#remove slow_tick tag
tag @a remove slow_tick
