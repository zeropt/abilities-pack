# Become a Dragon
# As: Player

#Dragon ID:5
execute if score @s ability_id matches 0 run scoreboard players set @s ability_id 5

#Clear arrow advancement
advancement revoke @s only abilities_pack:hurt_by_arrow
