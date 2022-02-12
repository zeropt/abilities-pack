# Bat Flying
# As: Player

function abilities_pack:abilities/bat_levitation
execute at @s unless block ~ ~-0.01 ~ #abilities_pack:nonsolid run effect clear @s levitation
execute at @s unless block ~ ~-0.01 ~ #abilities_pack:nonsolid run tag @s remove flying
execute if predicate abilities_pack:is_riding_entity run effect clear @s levitation
execute if predicate abilities_pack:is_riding_entity run tag @s remove flying
execute unless predicate abilities_pack:in_mainhand run function abilities_pack:abilities/safe_landing
execute unless predicate abilities_pack:in_mainhand run tag @s remove flying
