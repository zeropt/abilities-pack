# Damage Player
# As: Player

#damage on a 1 sec cooldown
execute if score @s damage_cd matches 0 run effect give @s minecraft:instant_health 1 0 true
execute if score @s damage_cd matches 0 run effect give @s minecraft:instant_damage 1 0 true
execute if score @s damage_cd matches 0 run scoreboard players set @s damage_cd 20
