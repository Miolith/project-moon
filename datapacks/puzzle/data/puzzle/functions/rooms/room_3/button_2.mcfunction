execute as @e[tag=replaceable_block,x=245,y=26,z=117,dx=36,dy=34,dz=50,scores={block=4}] at @s run function puzzle:remove_block
scoreboard players set #block var 4
execute positioned 255 37 142 run function puzzle:block_spawner