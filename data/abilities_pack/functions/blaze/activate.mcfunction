# Blaze activate
# As: Player

execute at @s anchored eyes positioned ^ ^ ^ as @e[type=snowball,nbt={Item:{tag:{activator:1b}}},limit=1,sort=nearest] run function abilities_pack:abilities/small_fireball_replace
execute as @s[scores={act_target=1..}] run scoreboard players remove @s act_target 1
execute as @s[scores={activate_cd=..0}] run scoreboard players set @s activate_cd 100
