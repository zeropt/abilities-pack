# Bat Loop
# As: Player

#effects
#effect give @s hunger 1 0 true
#effect give @s weakness 1 0 true
#effect give @s speed 1 0 true

#Blinded by the light!
execute at @s unless predicate abilities_pack:is_bright run effect clear @s blindness
execute at @s if predicate abilities_pack:is_bright run effect give @s blindness 20 0 true

#bat locate
execute as @s[tag=trigger_act] run function abilities_pack:bat/activate

#flying
execute if predicate abilities_pack:in_mainhand unless predicate abilities_pack:is_riding_entity at @s if block ~ ~-0.01 ~ #abilities_pack:nonsolid run tag @s add flying
execute as @s[tag=flying] run function abilities_pack:bat/flying
execute as @s[tag=!flying] run scoreboard players set @s temp_global 0

#reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
