# Summon and shoot blaze fireball
# As: Tagged Player

#Shoot Fireball
execute anchored eyes run summon small_fireball ^ ^ ^ {Tags:["new"]}
data modify entity @e[type=minecraft:small_fireball,nbt={Tags:["new"]},limit=1,sort=nearest] Owner set from entity @s UUID
execute as @e[type=minecraft:small_fireball,nbt={Tags:["new"]},limit=1,sort=nearest] at @s run function abilities_pack:blaze/set_fireball_motion
tag @e[type=minecraft:small_fireball,nbt={Tags:["new"]},limit=1,sort=nearest] remove new

#Sound
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.8
