# run evoker fang spell
# As: Player

execute unless predicate abilities_pack:is_sneaking run function abilities_pack:abilities/evoker_line_spell
execute if predicate abilities_pack:is_sneaking run function abilities_pack:abilities/evoker_ring_spell
