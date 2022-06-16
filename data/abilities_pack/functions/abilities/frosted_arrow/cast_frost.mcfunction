# rayast freeze water and lava below
# At: Location

#set temp_global
scoreboard players set #global temp_global 10

#raycast
execute if block ~ ~ ~ #abilities_pack:airs positioned ~ ~-1 ~ run function abilities_pack:abilities/frosted_arrow/raycast
