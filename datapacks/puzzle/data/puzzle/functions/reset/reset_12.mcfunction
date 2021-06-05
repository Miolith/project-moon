execute as @e[tag=replaceable_block,x=245,y=26,z=117,dx=36,dy=34,dz=50] at @s run function puzzle:remove_block
scoreboard players set #block var 8
execute positioned 267 46 153 run function puzzle:spawn_block
execute positioned 246 38 141 align xyz run function puzzle:open_doors
schedule function puzzle:phase_12 10t