# Replace snowball with a falling cobweb
# As: Tagged Snowball At: Player

#Summon Fireball
execute at @s rotated as @p run summon falling_block ^ ^ ^0.4 {BlockState:{Name:"minecraft:cobweb"},NoGravity:0b,Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:4,FallHurtAmount:2f,Tags:["new"]}

#Playsound
#execute at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.8

execute at @s store result entity @e[type=minecraft:falling_block,tag=new,limit=1,sort=nearest] Motion[0] double 0.0005 run data get entity @s Motion[0] 1000
execute at @s store result entity @e[type=minecraft:falling_block,tag=new,limit=1,sort=nearest] Motion[1] double 0.0005 run data get entity @s Motion[1] 1000
execute at @s store result entity @e[type=minecraft:falling_block,tag=new,limit=1,sort=nearest] Motion[2] double 0.0005 run data get entity @s Motion[2] 1000
#execute at @s run data modify entity @e[type=minecraft:falling_block,tag=new,limit=1,sort=nearest] Motion set from entity @s Motion

execute at @s as @e[type=minecraft:falling_block,tag=new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~

#Remove Tag
execute at @s run tag @e[type=minecraft:falling_block,tag=new,limit=1,sort=nearest] remove new