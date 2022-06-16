# Stray Loop
# As: Player

function abilities_pack:abilities/tag_in_sunlight
function abilities_pack:abilities/tag_in_water

#effects
effect give @s weakness 1 0 true

# burn or damage helmet
execute as @s[tag=in_sunlight,tag=!in_water] run function abilities_pack:stray/burn

#smite damage
function abilities_pack:abilities/smite_damage

#slow target
function abilities_pack:abilities/slow_target

#activate
execute as @s[tag=trigger_act] run function abilities_pack:stray/activate
