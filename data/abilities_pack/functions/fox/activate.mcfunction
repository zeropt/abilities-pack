# Fox activate
# As: Player

function abilities_pack:abilities/fox_sprint
scoreboard players set @s activate_cd 260
tag @s remove active
clear @s warped_fungus_on_a_stick{activator:1b}
