# Launch Small Fireball
# As: Tagged Snowball

#Summon Fireball
execute rotated as @p run summon minecraft:small_fireball ^ ^ ^0.4 {Tags:["new"]}

#Playsound
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.8

#Copy Data
data modify entity @e[type=minecraft:small_fireball,nbt={Tags:["new"]},limit=1,sort=nearest] Owner set from entity @s Owner

execute store result entity @e[type=minecraft:small_fireball,nbt={Tags:["new"]},limit=1,sort=nearest] Motion[0] double 0.0005 run data get entity @s Motion[0] 1000
execute store result entity @e[type=minecraft:small_fireball,nbt={Tags:["new"]},limit=1,sort=nearest] Motion[1] double 0.0005 run data get entity @s Motion[1] 1000
execute store result entity @e[type=minecraft:small_fireball,nbt={Tags:["new"]},limit=1,sort=nearest] Motion[2] double 0.0005 run data get entity @s Motion[2] 1000

execute store result entity @e[type=minecraft:small_fireball,nbt={Tags:["new"]},limit=1,sort=nearest] power[0] double 0.00009 run data get entity @s Motion[0] 1000
execute store result entity @e[type=minecraft:small_fireball,nbt={Tags:["new"]},limit=1,sort=nearest] power[1] double 0.00009 run data get entity @s Motion[1] 1000
execute store result entity @e[type=minecraft:small_fireball,nbt={Tags:["new"]},limit=1,sort=nearest] power[2] double 0.00009 run data get entity @s Motion[2] 1000

#Remove Tag
tag @e[type=minecraft:small_fireball,nbt={Tags:["new"]},limit=1,sort=nearest] remove new