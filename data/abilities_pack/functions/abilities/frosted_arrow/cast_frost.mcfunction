# rayast freeze water and lava below
# At: Location

#set raycast distance
scoreboard players set #abilities_pack apvar_0 10

#raycast
execute if block ~ ~ ~ #abilities_pack:airs positioned ~ ~-1 ~ run function abilities_pack:abilities/frosted_arrow/raycast
