# climb using Player pitch
# As: Player

# if not riding and on a climable surface: climb
function abilities_pack:abilities/spider_climb/tag_if_climbable
execute as @s[tag=climbable] if predicate abilities_pack:is_riding_entity run tag @s remove climbable
execute as @s[tag=climbable] run function abilities_pack:abilities/spider_climb/climb

# if riding or !climable: stop_levitation
execute as @s if predicate abilities_pack:is_riding_entity run function abilities_pack:abilities/spider_climb/stop
execute as @s[tag=!climbable] run function abilities_pack:abilities/spider_climb/stop
