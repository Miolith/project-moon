execute as @e[tag=replaceable_block,x=160,y=21,z=143,dx=25,dy=26,dz=31] at @s run function puzzle:remove_block

scoreboard players set #block var 8
execute positioned 173 28 158 run function puzzle:spawn_block

fill 187 28 157 187 30 159 brown_stained_glass