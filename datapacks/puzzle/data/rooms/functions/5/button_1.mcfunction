execute as @e[type=turtle,tag=replaceable_block,x=328,y=30,z=94,dx=52,dy=62,dz=68,tag=71771] at @s run function puzzle:remove_block
scoreboard players set #block var 6
execute positioned 361 79 96 run function puzzle:block_spawner
execute positioned 361 79 96 run tag @e[type=turtle,sort=nearest,limit=1] add 71771

scoreboard players set $button_1 room5_vars 1