execute as @e[type=turtle,tag=replaceable_block,x=328,y=30,z=94,dx=52,dy=62,dz=68,scores={block=3}] at @s run function puzzle:remove_block
scoreboard players set #block var 3
execute positioned 369 45 113 run function puzzle:block_spawner