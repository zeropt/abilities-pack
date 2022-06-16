# Give player the shulker activator
# As: Player

# if not sneaking: wfoas
give @s[scores={act_id=0}] warped_fungus_on_a_stick{display:{Name:'{"text":"Shulker Bullet","color":"light_purple"}'},CustomModelData:11804,activator:1b} 1

# if sneaking: shulker shell
give @s[scores={act_id=1}] shulker_shell{display:{Name:'{"text":"Closed Shell","color":"light_purple"}'},CustomModelData:0,activator:1b} 1
