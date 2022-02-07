# Bat activate
# As: Player

function abilities_pack:abilities/bat_locate
scoreboard players set @s activate_cd 40
tag @s remove active
clear @s warped_fungus_on_a_stick{activator:1b}
