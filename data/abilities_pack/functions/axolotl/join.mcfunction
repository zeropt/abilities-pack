# Become an Axolotl
# As: Player

#Axolotl ID:11
scoreboard players set @s ability_id 11

#title
title @s title {"text":"Axolotl","color":"light_purple"}

#playsound
execute at @s anchored eyes run playsound entity.axolotl.idle_air player @a ^ ^ ^ 1.0

#activator
scoreboard players set @s act_target 1

#inventory update
function abilities_pack:axolotl/inventory_update

#scoreboards
scoreboard players set @s wet_cd 1200

#tags
tag @s add healer

#advancements
advancement revoke @s only abilities_pack:drank_water

#attributes
attribute @s minecraft:generic.max_health base set 14.0
