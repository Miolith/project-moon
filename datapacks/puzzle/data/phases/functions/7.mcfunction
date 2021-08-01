scoreboard players add #animation_timer timer 1

execute if score #animation_timer timer matches 1 run execute as @a at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 2
execute if score #animation_timer timer matches 1..80 run title @a actionbar ["",{"translate":"space.-55"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-128"},{"translate":"space.-218"},{"text":"Sur ce, je vous souhaite bon courage, vous allez en avoir besoin."}]

execute if entity @e[type=turtle,tag=!placing,scores={block=5},x=94,y=16,z=162,dx=0,dy=0,dz=0] run execute at @e[type=turtle,tag=!placing,scores={block=5},x=94,y=16,z=162,dx=0,dy=0,dz=0] run function puzzle:animation/phase_7_1

execute if entity @e[type=turtle,tag=!placing,scores={block=4},x=94,y=17,z=162,dx=0,dy=0,dz=0] run execute at @e[type=turtle,tag=!placing,scores={block=4},x=94,y=17,z=162,dx=0,dy=0,dz=0] run function puzzle:animation/phase_7_2

execute if entity @e[type=turtle,tag=!placing,scores={block=3},x=95,y=16,z=162,dx=0,dy=0,dz=0] run execute at @e[type=turtle,tag=!placing,scores={block=3},x=95,y=16,z=162,dx=0,dy=0,dz=0] run function puzzle:animation/phase_7_3

execute if entity @e[type=turtle,tag=!placing,scores={block=6},x=95,y=17,z=162,dx=0,dy=0,dz=0] run execute at @e[type=turtle,tag=!placing,scores={block=6},x=95,y=17,z=162,dx=0,dy=0,dz=0] run function puzzle:animation/phase_7_4

scoreboard players add #toggle var 0
execute if blocks 94 16 177 95 17 177 94 16 162 all run execute if score #toggle var matches 0 run function puzzle:animation/phase_7_5

execute if score #open_door1 var matches 1.. run fill 84 15 169 84 16 170 air 

execute if score #open_door1 var matches 0 run fill 84 15 169 84 16 170 brown_stained_glass

execute if entity @e[type=turtle,tag=!placing,scores={block=7},x=107,y=19,z=159,dx=0,dy=0,dz=0] run function puzzle:animation/phase_7_6


execute if score #pp_m_1 var matches 0 if block 72 21 170 heavy_weighted_pressure_plate[power=1] positioned 72 21 170 run function puzzle:rooms/main_room/pp_1
execute if score #pp_m_1 var matches 1 if block 72 21 170 heavy_weighted_pressure_plate[power=0] positioned 72 21 170 run function puzzle:rooms/main_room/dpp_1

execute if score #pp_m_2 var matches 0 if block 89 15 164 heavy_weighted_pressure_plate[power=1] positioned 89 15 164 run function puzzle:rooms/main_room/pp_2
execute if score #pp_m_2 var matches 1 if block 89 15 164 heavy_weighted_pressure_plate[power=0] positioned 89 15 164 run function puzzle:rooms/main_room/dpp_2