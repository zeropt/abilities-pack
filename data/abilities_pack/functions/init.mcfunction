# Datapack Init
# As: Server

#Datapack scoreboards
scoreboard objectives add player_id dummy
scoreboard objectives add ability_id dummy
scoreboard objectives add pick_ability trigger

#Activators
scoreboard objectives add coas_counter minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add wfoas_counter minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add s_counter minecraft.used:minecraft.snowball
scoreboard objectives add ee_counter minecraft.used:minecraft.ender_eye
scoreboard objectives add ep_counter minecraft.used:minecraft.ender_pearl
scoreboard objectives add poppy_counter minecraft.used:minecraft.poppy
scoreboard objectives add sp_counter minecraft.used:minecraft.splash_potion
scoreboard objectives add bow_counter minecraft.used:minecraft.bow
scoreboard objectives add activate_cd dummy
scoreboard objectives add act_count dummy
scoreboard objectives add act_target dummy
scoreboard objectives add prev_act_target dummy
scoreboard objectives add act_id dummy
scoreboard objectives add prev_act_id dummy

#Stat trackers
scoreboard objectives add health health
scoreboard objectives add death_counter deathCount
scoreboard objectives add sleep_counter minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add sneak_dur minecraft.custom:minecraft.sneak_time
scoreboard objectives add flight_dur minecraft.custom:minecraft.aviate_one_cm

#general variables
scoreboard objectives add apvar_0 dummy
scoreboard objectives add apvar_1 dummy

#Ability objectives and teams
scoreboard objectives add target_id dummy
scoreboard objectives add damage_cd dummy
scoreboard objectives add playsound_cd dummy
scoreboard objectives add regen_cd dummy
scoreboard objectives add launch_cd dummy
scoreboard objectives add boost_cd dummy
scoreboard objectives add safe_landing_cd dummy
scoreboard objectives add glow_cd dummy
scoreboard objectives add health_tracker dummy
scoreboard objectives add effect_id dummy
scoreboard objectives add wet_cd dummy
team add forget

#Initialize GLobal ID
scoreboard players add #abilities_pack player_id 0
scoreboard players add #abilities_pack target_id 0

#start looping functions
function abilities_pack:slow_main
function abilities_pack:kill_pack_items

#abilities loops
function abilities_pack:abilities/glow/loop
function abilities_pack:abilities/launch/loop
function abilities_pack:abilities/heal_friends/loop
