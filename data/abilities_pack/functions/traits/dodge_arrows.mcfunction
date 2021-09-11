# Detect and Dodge arrows
# As: Player

execute at @s as @e[type=#minecraft:arrows,nbt={HasBeenShot:1b,inGround:0b},distance=..10] run function abilities_pack:traits/dodge_arrows/arrow_raycast
execute at @s at @e[type=minecraft:armor_stand,tag=ray,limit=1,sort=nearest] positioned ~-0.3 ~-0.3 ~-0.3 if entity @s[dx=0] positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0] run function abilities_pack:traits/enderman_tp

#execute as @e[type=minecraft:armor_stand,tag=direction] at @s unless entity @e[type=#minecraft:arrows,tag=tracked,nbt={inGround:0b},distance=..10] run kill @s
kill @e[type=minecraft:armor_stand,tag=ray]
