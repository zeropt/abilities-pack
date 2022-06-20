# Setup a new player
# As: Player

#set player_id
scoreboard players operation @s player_id = #abilities_pack player_id
scoreboard players add #abilities_pack player_id 1

#initialize objectives
scoreboard players set @s ability_id 0
scoreboard players set @s activate_cd 0
scoreboard players set @s act_id 0
scoreboard players set @s prev_act_id 0
scoreboard players set @s playsound_cd 0
scoreboard players set @s health_tracker 0

#tags
tag @s remove healer
