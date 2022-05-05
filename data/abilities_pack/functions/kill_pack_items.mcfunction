# Kill dropped activators, placeholders, and traits
# As: Server

#Kill all dropped trait items and activators and placeholders
execute as @e[type=item,nbt={Item:{tag:{activator:1b}}}] run kill @s
execute as @e[type=item,nbt={Item:{tag:{placeholder:1b}}}] run kill @s
execute as @e[type=item,nbt={Item:{tag:{trait:1b}}}] run kill @s

#schedule this function again
schedule function abilities_pack:kill_pack_items 8t replace
