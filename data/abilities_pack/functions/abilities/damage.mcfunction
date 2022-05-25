# Damage Player
# As: Player

#damage on a cooldown
execute unless score @s damage_cd matches ..2147483647 run function abilities_pack:abilities/damage/give 
