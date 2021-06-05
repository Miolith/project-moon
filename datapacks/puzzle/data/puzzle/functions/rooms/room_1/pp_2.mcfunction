execute as @e[tag=replaceable_block,x=160,y=21,z=143,dx=25,dy=26,dz=31,scores={block=3}] at @s run function puzzle:remove_block
scoreboard players set #block var 3
execute positioned 177 28 158 run function puzzle:block_spawner