# heal_friends loop
# As: Server

#clear attackers
execute as @e[type=#abilities_pack:can_target,tag=attacker] run tag @s remove attacker

#tag attackers
execute as @a[tag=healer] run function abilities_pack:abilities/heal_friends/tag_attackers

#reschedule loop
schedule function abilities_pack:abilities/heal_friends/loop 10t replace
