# Pick an ability, any ability!
# As: Player

tellraw @s {"text":"Pick an Ability:","bold":true,"color":"yellow"}

######################################## Abilities ########################################
tellraw @s {"text":"[Blaze]","color":"aqua","clickEvent":{"action":"run_command","value":"/function abilities_pack:blaze/join"}}
tellraw @s {"text":"[Enderman]","color":"aqua","clickEvent":{"action":"run_command","value":"/function abilities_pack:enderman/join"}}
tellraw @s {"text":"[Guardian]","color":"aqua","clickEvent":{"action":"run_command","value":"/function abilities_pack:guardian/join"}}
tellraw @s {"text":"[Shulker]","color":"aqua","clickEvent":{"action":"run_command","value":"/function abilities_pack:shulker/join"}}
