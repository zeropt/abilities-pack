# trigger a sculk vibration
# As: Player

execute at @s run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,Flight:0,Tags:["vibration"]}
execute at @s run data modify entity @e[type=firework_rocket,tag=vibration,distance=..1,limit=1,sort=nearest] Owner set from entity @s UUID
