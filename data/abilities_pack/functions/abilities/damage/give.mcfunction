# Damage the player
# As: Player

effect give @s minecraft:wither 1 1 true
scoreboard players set @s damage_cd 10
tag @s add remove_wither
