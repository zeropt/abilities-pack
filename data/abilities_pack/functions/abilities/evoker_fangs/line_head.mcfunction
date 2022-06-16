# summon evoker_fangs and cast a new head
# As: current head

#place fangs in front of the head
execute at @s rotated as @s positioned ^ ^ ^1 run function abilities_pack:abilities/evoker_fangs/place_fangs

#new head
function abilities_pack:abilities/evoker_fangs/new_head

#kill current head
kill @s
