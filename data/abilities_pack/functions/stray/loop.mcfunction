# Stray Loop
# As: Player

function abilities_pack:abilities/tag_in_sunlight
function abilities_pack:abilities/tag_in_water

#effects
effect give @s[tag=in_sunlight,tag=!in_water] weakness 1 0 false
execute if predicate abilities_pack:power_in_slot run effect give @s glowing 1 0 false

# burn or damage helmet
execute as @s[tag=in_sunlight,tag=!in_water] if predicate abilities_pack:in_survival unless predicate abilities_pack:has_fire_res run function abilities_pack:stray/burn

#smite damage
function abilities_pack:abilities/smite_damage

#slow target
function abilities_pack:abilities/slow_target

#activate
execute as @s[tag=trigger_act] run function abilities_pack:stray/activate
