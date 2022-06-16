# frost raycast
# At: Location

#decrement temp_global
scoreboard players remove #global temp_global 1

#convert water
function abilities_pack:abilities/frosted_ice

#convert lava
function abilities_pack:abilities/frosted_basalt

#raycast
execute unless block ~ ~ ~ #abilities_pack:airs run scoreboard players set #global temp_global 0
execute if score #global temp_global matches 1.. positioned ~ ~-1 ~ run function abilities_pack:abilities/frosted_arrow/raycast
