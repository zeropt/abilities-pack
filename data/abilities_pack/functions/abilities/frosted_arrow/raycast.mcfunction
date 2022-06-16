# frost raycast
# At: Location

#decrement apvar_0
scoreboard players remove #abilities_pack apvar_0 1

#convert water
function abilities_pack:abilities/frosted_ice

#convert lava
function abilities_pack:abilities/frosted_basalt

#raycast
execute unless block ~ ~ ~ #abilities_pack:airs run scoreboard players set #abilities_pack apvar_0 0
execute if score #abilities_pack apvar_0 matches 1.. positioned ~ ~-1 ~ run function abilities_pack:abilities/frosted_arrow/raycast
