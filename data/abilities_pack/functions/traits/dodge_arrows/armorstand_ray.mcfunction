# Place a ray cast of armor stands
# As: Arrow Entity

summon armor_stand ~ ~ ~ {Silent:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Small:1b,Tags:["ray"]}
scoreboard players remove @s ray_range 1
execute if score @s ray_range matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function abilities_pack:traits/dodge_arrows/armorstand_ray
