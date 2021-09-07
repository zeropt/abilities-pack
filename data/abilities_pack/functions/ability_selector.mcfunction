# Pick an ability, any ability!
# As: Player

scoreboard players set @s pick_ability 0

tellraw @s {"text":"Pick an Ability:","bold":true,"color":"yellow"}

######################################## Abilities ########################################
tellraw @s {"text":"[Blaze]","color":"aqua","clickEvent":{"action":"run_command","value":"/function abilities_pack:blaze/join"}}
