# Pick an ability, any ability!
# As: Player

tellraw @s {"text":"Pick an Ability:","bold":true,"color":"yellow"}

######################################## Abilities ########################################
tellraw @s {"text":"[Blaze]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger pick_ability set -1"}}
tellraw @s {"text":"[Enderman]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger pick_ability set -2"}}
tellraw @s {"text":"[Guardian]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger pick_ability set -3"}}
tellraw @s {"text":"[Shulker]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger pick_ability set -4"}}
