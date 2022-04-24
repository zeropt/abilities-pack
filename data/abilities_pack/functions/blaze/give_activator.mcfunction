# Give player the blaze activator
# As: Player

# if act_target == 0: slot stick
execute as @s[scores={act_target=0}] run give @s stick{display:{Name:'{"text":"Ability Slot"}'},CustomModelData:11800,activator:1b} 1

# if act_target >= 1: snowball
execute as @s[scores={act_target=1..}] run give @s snowball{display:{Name:'{"text":"Fireball","color":"yellow"}'},CustomModelData:11801,activator:1b} 1
