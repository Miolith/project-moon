fill 94 16 162 95 17 162 air
fill 106 15 170 106 16 171 brown_stained_glass

execute as @e[type=turtle,scores={block=3..8},x=87,y=21,z=161,distance=..40] at @s run function puzzle:remove_block

scoreboard players set #block var 3
execute positioned 98.0 21.0 159.0 run function puzzle:spawn_block

scoreboard players set #block var 4
execute positioned 94.0 16.0 169.0 run function puzzle:spawn_block

scoreboard players set #block var 5
execute positioned 101.0 17.0 177.0 run function puzzle:spawn_block

scoreboard players set #block var 6
execute positioned 88.0 18.0 166.0 run function puzzle:spawn_block

scoreboard players set #block var 7
execute positioned 115.0 16.0 171.0 run function puzzle:spawn_block

scoreboard players set #block var 8
execute positioned 99.0 15.0 161.0 run function puzzle:spawn_block

scoreboard players set #animation_timer timer 0
scoreboard players set #toggle var 0

execute positioned 104 15 168 run function puzzle:deactivate_wire