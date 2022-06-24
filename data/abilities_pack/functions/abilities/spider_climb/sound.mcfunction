# play climbing sound
# As: Player

execute at @s run playsound minecraft:entity.spider.step player @a ~ ~ ~ 0.2 0.5
function abilities_pack:abilities/trigger_vibration
scoreboard players set @s playsound_cd 10
