# Teleport player to a random location
# As: Player

execute at @s run particle minecraft:portal ~ ~1 ~ 0.25 0.5 0.25 0 100 normal
execute at @s unless predicate abilities_pack:is_in_the_nether run function abilities_pack:abilities/enderman_tp/overworld_tp
execute at @s if predicate abilities_pack:is_in_the_nether run spreadplayers ~ ~ 0 16 under 127 false @s
execute at @s run particle minecraft:portal ~ ~1 ~ 0.25 0.5 0.25 0 100 normal
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.8
function abilities_pack:abilities/trigger_vibration
