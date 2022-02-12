# Kill dropped activators and traits
# As: Server

#Kill all dropped trait items and activators
execute as @e[type=item,nbt={Item:{tag:{activator:1b}}}] run kill @s
execute as @e[type=item,nbt={Item:{tag:{trait:1b}}}] run kill @s
execute as @e[type=snowball,nbt={Item:{tag:{activator:1b}}}] run kill @s

#schedule this function again
schedule function abilities_pack:kill_activators_traits 8t replace
