# evoker activate
# As: Player

execute unless predicate abilities_pack:see_blue_sheep run function abilities_pack:evoker/fang_spell
execute if predicate abilities_pack:see_blue_sheep run function abilities_pack:abilities/sheep_spell
scoreboard players set @s activate_cd 100
tag @s remove active
clear @s warped_fungus_on_a_stick{activator:1b}
