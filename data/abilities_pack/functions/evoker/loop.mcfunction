# Evoker Loop
# As: Tagged Player

#effects
effect give @s weakness 1 0 true

#manage totem
execute as @s[scores={tou_counter=1..}] run tag @s remove totemed
scoreboard players set @s tou_counter 0

#spells
execute as @s[tag=trigger_act] run function abilities_pack:evoker/activate

#reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
