# play laser sound
# As: Player

execute at @s run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.8
scoreboard players set @s playsound_cd 30
