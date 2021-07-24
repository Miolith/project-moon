# Reset Room 4
execute as @e[type=turtle,tag=replaceable_block,x=282,y=13,z=116,dx=41,dy=53,dz=39] at @s run function puzzle:remove_block
execute positioned 293 46 144 align xyz run function puzzle:open_doors
schedule function puzzle:phase_13 10t