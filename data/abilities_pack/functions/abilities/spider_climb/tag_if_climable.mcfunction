# Tag Player when on a climable surface
# As: Player

#remove tags
tag @s remove climable

#climable
execute at @s unless block ~-0.4 ~ ~-0.4 #abilities_pack:not_climable run tag @s add climable
execute at @s unless block ~-0.4 ~ ~0.4 #abilities_pack:not_climable run tag @s add climable
execute at @s unless block ~0.4 ~ ~-0.4 #abilities_pack:not_climable run tag @s add climable
execute at @s unless block ~0.4 ~ ~0.4 #abilities_pack:not_climable run tag @s add climable
execute at @s unless block ~-0.4 ~0.6 ~-0.4 #abilities_pack:not_climable run tag @s add climable
execute at @s unless block ~-0.4 ~0.6 ~0.4 #abilities_pack:not_climable run tag @s add climable
execute at @s unless block ~0.4 ~0.6 ~-0.4 #abilities_pack:not_climable run tag @s add climable
execute at @s unless block ~0.4 ~0.6 ~0.4 #abilities_pack:not_climable run tag @s add climable
