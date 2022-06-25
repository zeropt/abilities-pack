# trigger a sculk vibration
# As: Player

execute at @s run summon snowball ~ ~ ~ {Silent:1b,Tags:["vibration"]}
execute at @s run data modify entity @e[type=snowball,tag=vibration,distance=..1,limit=1,sort=nearest] Owner set from entity @s UUID
execute at @s run kill @e[type=snowball,tag=vibration,distance=..1,limit=1,sort=nearest]
