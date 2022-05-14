# Stop spider climb
# As: Player

# stop safely
#effect clear @s[tag=climbing] slow_falling
execute as @s[tag=climbing] run function abilities_pack:abilities/safe_landing
tag @s[tag=climbing] remove climbing
