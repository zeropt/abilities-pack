# Give player the shulker placeholder
# As: Player

# if not sneaking: placeholder stick
give @s[scores={act_id=0}] stick{display:{Name:'{"text":"Ability Slot"}'},CustomModelData:11800,placeholder:1b} 1

# if sneaking: shulker shell
give @s[scores={act_id=1}] shulker_shell{display:{Name:'{"text":"Closed Shell","color":"light_purple"}'},CustomModelData:0,placeholder:1b} 1
