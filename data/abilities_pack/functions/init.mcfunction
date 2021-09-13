# Datapack Init
# As: Server

#Datapack objectives
scoreboard objectives add player_id dummy
scoreboard objectives add ability_id dummy
scoreboard objectives add pick_ability trigger
scoreboard objectives add coas_counter minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add activate dummy
scoreboard objectives add activate_cd dummy

#Trait objectives
scoreboard objectives add damage_cd dummy
scoreboard objectives add rain_test dummy
scoreboard objectives add ray_range dummy
scoreboard objectives add proj_x0 dummy
scoreboard objectives add proj_y0 dummy
scoreboard objectives add proj_z0 dummy
scoreboard objectives add proj_x1 dummy
scoreboard objectives add proj_y1 dummy
scoreboard objectives add proj_z1 dummy
scoreboard objectives add pitch dummy
scoreboard objectives add target_id dummy

#Initialize GLobal ID
scoreboard players add #global player_id 0
scoreboard players add #global target_id 0
