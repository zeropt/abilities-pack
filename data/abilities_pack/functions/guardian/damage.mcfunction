# Guardian is hurt
# As: Player


function abilities_pack:abilities/tag_in_water

#sound in water
execute as @s[tag=in_water] at @s run playsound entity.guardian.hurt player @a ~ ~ ~ 0.8

#sound on land
execute as @s[tag=!in_water] at @s run playsound entity.guardian.hurt_land player @a ~ ~ ~ 0.8