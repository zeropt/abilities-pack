# Detect tagged snowball, summon small fireball, and tag player
# As: Server

#Launch fireball
execute as @e[type=minecraft:snowball,nbt={Item:{tag:{blaze_ability:1b}}}] run function abilities_pack:abilities/small_fireball/launch

#kill tagged snowballs
kill @e[type=minecraft:snowball,nbt={Item:{tag:{blaze_ability:1b}}}]

#kill fireballs that are too high
execute as @e[type=minecraft:small_fireball] at @s run kill @s[y=512,dy=0]