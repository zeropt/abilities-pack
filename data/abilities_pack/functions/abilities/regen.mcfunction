# Regen Player
# As: Player

# regen on cooldown
execute unless score @s regen_cd matches ..2147483647 run function abilities_pack:abilities/regen/give
