# Blaze recharge
# As: Player

scoreboard players add @s act_target 1
execute as @s[scores={act_target=..2}] run scoreboard players set @s activate_cd 100
