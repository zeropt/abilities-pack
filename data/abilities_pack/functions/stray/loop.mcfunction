# Stray Loop
# As: Player

# burn or damage helmet
execute as @s[tag=in_sunlight,tag=!in_water] if predicate abilities_pack:in_survival unless predicate abilities_pack:has_fire_res run function abilities_pack:stray/burn

#slow target
function abilities_pack:abilities/slow_target

#activate
execute as @s[tag=trigger_act] run function abilities_pack:stray/activate
