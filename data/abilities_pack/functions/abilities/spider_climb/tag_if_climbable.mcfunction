# Tag Player when on a climbable surface
# As: Player

#remove tags
tag @s remove climbable

# all climbables
execute at @s unless block ~-0.4 ~0.6 ~-0.4 #abilities_pack:not_climbable run tag @s add climbable
execute at @s unless block ~-0.4 ~0.6 ~0.4 #abilities_pack:not_climbable run tag @s add climbable
execute at @s unless block ~0.4 ~0.6 ~-0.4 #abilities_pack:not_climbable run tag @s add climbable
execute at @s unless block ~0.4 ~0.6 ~0.4 #abilities_pack:not_climbable run tag @s add climbable

# only full climbable
execute at @s unless block ~-0.4 ~ ~-0.4 #abilities_pack:not_full_climbable run tag @s add climbable
execute at @s unless block ~-0.4 ~ ~0.4 #abilities_pack:not_full_climbable run tag @s add climbable
execute at @s unless block ~0.4 ~ ~-0.4 #abilities_pack:not_full_climbable run tag @s add climbable
execute at @s unless block ~0.4 ~ ~0.4 #abilities_pack:not_full_climbable run tag @s add climbable

# nearly climbable
execute at @s if block ~-0.4 ~0.125 ~-0.4 #abilities_pack:nearly_climbable run tag @s add climbable
execute at @s if block ~-0.4 ~0.125 ~0.4 #abilities_pack:nearly_climbable run tag @s add climbable
execute at @s if block ~0.4 ~0.125 ~-0.4 #abilities_pack:nearly_climbable run tag @s add climbable
execute at @s if block ~0.4 ~0.125 ~0.4 #abilities_pack:nearly_climbable run tag @s add climbable

# half climbable
execute at @s if block ~-0.4 ~0.5 ~-0.4 #abilities_pack:half_climbable run tag @s add climbable
execute at @s if block ~-0.4 ~0.5 ~0.4 #abilities_pack:half_climbable run tag @s add climbable
execute at @s if block ~0.4 ~0.5 ~-0.4 #abilities_pack:half_climbable run tag @s add climbable
execute at @s if block ~0.4 ~0.5 ~0.4 #abilities_pack:half_climbable run tag @s add climbable
