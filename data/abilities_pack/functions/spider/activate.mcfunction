# Spider activate
# As: Player

#effect give @s glowing 1 0 false
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=potion,nbt={Item:{tag:{activator:1b}}},limit=1,sort=nearest] run function abilities_pack:abilities/web_potion
scoreboard players set @s activate_cd 120
scoreboard players set @s act_target 0
