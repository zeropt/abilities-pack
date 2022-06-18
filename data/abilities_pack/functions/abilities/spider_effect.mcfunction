# gives spider random effect at night
# As: Player

execute unless score @s effect_id matches ..2147483647 at @s if predicate abilities_pack:under_moon run function abilities_pack:abilities/spider_effect/set_effect

execute if score @s effect_id matches ..2147483647 run function abilities_pack:abilities/spider_effect/update_effect
