# ticks every 10 ticks
# As: Server

######################################## STARTOF Abilities ########################################

#Test ID:-1
execute as @a[tag=!died,scores={ability_id=-1}] run function abilities_pack:test/slow_loop

#Blaze ID:1
execute as @a[scores={ability_id=0,pick_ability=-1}] run function abilities_pack:blaze/join
execute as @a[tag=!died,scores={ability_id=1}] run function abilities_pack:blaze/slow_loop

#Enderman ID:2
execute as @a[scores={ability_id=0,pick_ability=-2}] run function abilities_pack:enderman/join
execute as @a[tag=!died,scores={ability_id=2}] run function abilities_pack:enderman/slow_loop

#Guardian ID:3
execute as @a[scores={ability_id=0,pick_ability=-3}] run function abilities_pack:guardian/join
execute as @a[tag=!died,scores={ability_id=3}] run function abilities_pack:guardian/slow_loop

#Shulker ID:4
execute as @a[scores={ability_id=0,pick_ability=-4}] run function abilities_pack:shulker/join
execute as @a[tag=!died,scores={ability_id=4}] run function abilities_pack:shulker/slow_loop

#Dragon ID:5
execute as @a[scores={ability_id=0,pick_ability=-5}] run function abilities_pack:dragon/join
execute as @a[tag=!died,scores={ability_id=5}] run function abilities_pack:dragon/slow_loop

#Evoker ID:6
execute as @a[scores={ability_id=0,pick_ability=-6}] run function abilities_pack:evoker/join
execute as @a[tag=!died,scores={ability_id=6}] run function abilities_pack:evoker/slow_loop

#Bat ID:7
execute as @a[scores={ability_id=0,pick_ability=-7}] run function abilities_pack:bat/join
execute as @a[tag=!died,scores={ability_id=7}] run function abilities_pack:bat/slow_loop

#Iron Golem ID:8
execute as @a[scores={ability_id=0,pick_ability=-8}] run function abilities_pack:iron_golem/join
execute as @a[tag=!died,scores={ability_id=8}] run function abilities_pack:iron_golem/slow_loop

#Fox ID:9
execute as @a[scores={ability_id=0,pick_ability=-9}] run function abilities_pack:fox/join
execute as @a[tag=!died,scores={ability_id=9}] run function abilities_pack:fox/slow_loop

#Spider ID:10
execute as @a[scores={ability_id=0,pick_ability=-10}] run function abilities_pack:spider/join
execute as @a[tag=!died,scores={ability_id=10}] run function abilities_pack:spider/slow_loop

#Axolotl ID:11
execute as @a[scores={ability_id=0,pick_ability=-11}] run function abilities_pack:axolotl/join
execute as @a[tag=!died,scores={ability_id=11}] run function abilities_pack:axolotl/slow_loop

#Stray ID:12
execute as @a[scores={ability_id=0,pick_ability=-12}] run function abilities_pack:stray/join
execute as @a[tag=!died,scores={ability_id=12}] run function abilities_pack:stray/slow_loop

######################################## ENDOF Abilities ########################################

#tag players
tag @a add slow_tick

#schedule this function again
schedule function abilities_pack:slow_main 10t replace
