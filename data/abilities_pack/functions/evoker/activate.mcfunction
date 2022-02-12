# evoker activate
# As: Player

execute unless predicate abilities_pack:see_blue_sheep run function abilities_pack:evoker/fang_spell
execute if predicate abilities_pack:see_blue_sheep run function abilities_pack:abilities/sheep_spell
scoreboard players set @s activate_cd 100
scoreboard players set @s act_target 0
