# play blaze ambient sound
# As: Player

execute at @s run playsound entity.blaze.burn player @a ~ ~ ~ 0.8
scoreboard players set @s playsound_cd 20
