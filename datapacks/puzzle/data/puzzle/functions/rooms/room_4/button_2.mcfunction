execute as @e[type=turtle,tag=replaceable_block,x=282,y=13,z=116,dx=41,dy=53,dz=39,scores={block=8}] at @s run function puzzle:remove_block
scoreboard players set #block var 8
execute positioned 289 43 139 run function puzzle:block_spawner

execute as @e[tag=replaceable_block,x=289,y=43,z=139,dx=0,dy=0,dz=0] run data modify entity @s NoAI set value 0b