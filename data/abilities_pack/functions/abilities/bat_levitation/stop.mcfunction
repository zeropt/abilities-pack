# Stop bat levitation
# As: Player

# clear effect
execute as @s[tag=flying] run effect clear @s levitation

# remove tag
tag @s[tag=flying] remove flying
