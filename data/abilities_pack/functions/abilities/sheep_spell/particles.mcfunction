# summon sheep particles recursively
# As: Player

#decrement temp_global
scoreboard players remove #global temp_global 1

#summon particle
execute at @s run particle entity_effect ~ ~0.6 ~ 0.976 0.502 0.114 1 0 normal

#call again
execute if score #global temp_global matches 1.. run function abilities_pack:abilities/sheep_spell/particles
