# Tag Player when in rain
# As: Player

#remove tags
tag @s remove in_rain

#in_rain
execute at @s unless predicate abilities_pack:dry_weather as @e[type=armor_stand,tag=rain_test] if score @s player_id = @p player_id store result score #global temp_global run data get entity @s Fire
execute at @s unless predicate abilities_pack:dry_weather if score #global temp_global matches 0 run tag @s add in_rain
execute at @s as @e[type=armor_stand,tag=rain_test] if score @s player_id = @p player_id run kill @s
execute at @s unless predicate abilities_pack:dry_weather run summon armor_stand ~ ~ ~ {Silent:1b,NoGravity:1b,Invulnerable:1b,Fire:2,HasVisualFire:0b,Marker:1b,Invisible:1b,Small:1b,Tags:["rain_test_new"]}
execute at @s unless predicate abilities_pack:dry_weather run scoreboard players operation @e[type=armor_stand,tag=rain_test_new,limit=1] player_id = @s player_id
tag @e[type=armor_stand,tag=rain_test_new] add rain_test
tag @e[type=armor_stand,tag=rain_test_new] remove rain_test_new
