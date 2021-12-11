# Setup a new player
# As: Player

#set player_id
scoreboard players operation @s player_id = #global player_id
scoreboard players add #global player_id 1

#initialize objectives
scoreboard players set @s ability_id 0
scoreboard players enable @s pick_ability
scoreboard players set @s activate_cd 0
scoreboard players set @s damage_cd 0
scoreboard players set @s playsound_cd 0
scoreboard players set @s crystal_regen_cd 0
scoreboard players set @s lev_cd 0
scoreboard players set @s safe_landing_cd 0
scoreboard players set @s health_tracker 0
