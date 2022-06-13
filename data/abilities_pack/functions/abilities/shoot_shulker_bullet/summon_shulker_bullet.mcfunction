# Summon shulker bullet and set data
# As: Player

#summon shulker bullet
execute at @s anchored eyes run summon minecraft:shulker_bullet ^ ^ ^ {Steps:5,Tags:["new"]}

#Playsound
execute at @s run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 0.8

#set owner
data modify entity @e[type=minecraft:shulker_bullet,tag=new,limit=1] Owner set from entity @s UUID

#copy player_id
scoreboard players operation @e[type=minecraft:shulker_bullet,tag=new,limit=1] player_id = @s player_id

#set target
data modify entity @e[type=minecraft:shulker_bullet,tag=new,limit=1] Target set from entity @e[tag=shulker_target,limit=1] UUID

#remove tag
tag @e[type=minecraft:shulker,tag=new] remove new