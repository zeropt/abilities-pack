# effects as the axolotl dries out
# As: Player

#wet
execute as @s[scores={wet_cd=601..1199}] run function abilities_pack:axolotl/wet_effects

#drier
execute as @s[scores={wet_cd=600}] at @s run playsound block.lava.extinguish player @a ~ ~ ~ 0.4 0.5
execute as @s[scores={wet_cd=1..600}] run function abilities_pack:axolotl/drier_effects

#dry
execute as @s[scores={wet_cd=..0}] run function abilities_pack:axolotl/dry_effects
