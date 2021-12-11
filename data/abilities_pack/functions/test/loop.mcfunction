# Test Loop
# As: Tagged Player


function abilities_pack:abilities/llama_inventory/player_loop

#execute if predicate abilities_pack:in_mainhand run function abilities_pack:abilities/llama_inventory/show_inventory
#execute unless predicate abilities_pack:in_mainhand run function abilities_pack:abilities/llama_inventory/hide_inventory
#execute as @s[tag=trigger_act] at @s run function abilities_pack:abilities/llama_inventory/toggle_visibility
