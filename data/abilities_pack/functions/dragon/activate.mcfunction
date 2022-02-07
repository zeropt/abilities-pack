# Dragon activate
# As: Player

execute unless predicate abilities_pack:is_sneaking run function abilities_pack:abilities/dragon_boost
execute as @s[predicate=abilities_pack:is_sneaking] run function abilities_pack:dragon/sneak_activate
scoreboard players set @s activate_cd 200
tag @s remove active
clear @s warped_fungus_on_a_stick{activator:1b}
