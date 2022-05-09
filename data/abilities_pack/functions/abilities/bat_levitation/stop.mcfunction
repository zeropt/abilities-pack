# Stop bat levitation
# As: Player

# clear effect
execute as @s[tag=flying] run function abilities_pack:abilities/safe_landing

# remove tag
tag @s[tag=flying] remove flying
