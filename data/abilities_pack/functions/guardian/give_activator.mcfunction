# Give player the guardian activator
# As: Player

# if not sneaking: wfoas
give @s[scores={act_id=0}] warped_fungus_on_a_stick{display:{Name:'{"text":"Guardian Laser","color":"dark_aqua"}',Lore:['{"text":"Shift for thorns"}']},CustomModelData:11803,activator:1b} 1

# if sneaking: thorns wfoas
give @s[scores={act_id=1}] warped_fungus_on_a_stick{display:{Name:'{"text":"Guardian Laser","color":"dark_aqua"}'},CustomModelData:11803,activator:1b,Enchantments:[{id:"minecraft:thorns",lvl:3s}]} 1
