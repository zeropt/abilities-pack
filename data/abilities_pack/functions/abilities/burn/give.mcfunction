# burn the player
# As: Player

effect give @s minecraft:wither 1 1 true
scoreboard players set @s damage_cd 20
tag @s add remove_wither

# sound
execute at @s run playsound minecraft:entity.player.hurt_on_fire player @a ~ ~ ~ 0.8
