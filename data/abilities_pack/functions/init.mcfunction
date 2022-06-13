# Datapack Init
# As: Server

#Datapack objectives
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
scoreboard objectives add activate_cd dummy
scoreboard objectives add act_count dummy
scoreboard objectives add act_target dummy
scoreboard objectives add prev_act_target dummy

#Stat trackers
scoreboard objectives add health health
scoreboard objectives add death_counter deathCount
scoreboard objectives add sleep_counter minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add sneak_dur minecraft.custom:minecraft.sneak_time

#Ability objectives and teams
scoreboard objectives add temp_global dummy
scoreboard objectives add temp_x0 dummy
scoreboard objectives add temp_y0 dummy
scoreboard objectives add temp_z0 dummy
scoreboard objectives add temp_x1 dummy
scoreboard objectives add temp_y1 dummy
scoreboard objectives add temp_z1 dummy
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
scoreboard players add #global player_id 0
scoreboard players add #global target_id 0

#start looping function
function abilities_pack:kill_pack_items
function abilities_pack:slow_tick
