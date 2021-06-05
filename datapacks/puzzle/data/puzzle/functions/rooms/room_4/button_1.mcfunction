execute as @e[type=turtle,tag=replaceable_block,x=282,y=13,z=116,dx=41,dy=53,dz=39,scores={block=5}] at @s run function puzzle:remove_block
scoreboard players set #block var 5
execute positioned 314 45 144 run function puzzle:block_spawner