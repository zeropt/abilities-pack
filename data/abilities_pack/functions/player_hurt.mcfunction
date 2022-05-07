# Executes when player is hurt
# As: Player

######################################## STARTOF Abilities ########################################

#Blaze ID:1
execute as @s[scores={ability_id=1}] run function abilities_pack:blaze/damage

#Enderman ID:2
execute as @s[scores={ability_id=2}] run function abilities_pack:enderman/damage

#Guardian ID:3
execute as @s[scores={ability_id=3}] run function abilities_pack:guardian/damage

#Shulker ID:4
execute as @s[scores={ability_id=4}] run function abilities_pack:shulker/damage

#Dragon ID:5
execute as @s[scores={ability_id=5}] run function abilities_pack:dragon/damage

#Evoker ID:6
execute as @s[scores={ability_id=6}] run function abilities_pack:evoker/damage

#Bat ID:7
execute as @s[scores={ability_id=7}] run function abilities_pack:bat/damage

#Iron Golem ID:8
execute as @s[scores={ability_id=8}] run function abilities_pack:iron_golem/damage

#Fox ID:9
execute as @s[scores={ability_id=9}] run function abilities_pack:fox/damage

######################################## ENDOF Abilities ########################################

#Revoke the player_hurt advancement
advancement revoke @s only abilities_pack:player_hurt