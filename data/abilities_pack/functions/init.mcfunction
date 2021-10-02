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
scoreboard objectives add activate dummy
scoreboard objectives add activate_cd dummy
scoreboard objectives add act_count dummy
scoreboard objectives add act_target dummy

#Ability objectives
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
scoreboard objectives add crystal_regen_cd dummy

#Initialize GLobal ID
scoreboard players add #global player_id 0
scoreboard players add #global target_id 0
