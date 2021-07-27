# Lower side pressure plate activation

scoreboard players add #fan_on2 var 1
scoreboard players add #fan_on3 var 1
scoreboard players add #open_door6 var 1


execute unless score #fan_on2 var matches 1 run tag b13d0ca6-dead-450b-b83c-62aaf517f7e0 add on
execute if score #fan_on2 var matches 1 run tag b13d0ca6-dead-450b-b83c-62aaf517f7e0 remove on

execute if score #fan_on3 var matches 1.. run tag @e[type=armor_stand,x=309,y=37,z=134,dx=0,dy=0,dz=0] add on

fill 299 38 130 296 40 133 minecraft:brown_stained_glass replace air

execute if score #open_door6 var matches 1 run fill 308 45 133 310 45 135 brown_stained_glass
execute unless score #open_door6 var matches 1 run fill 308 45 133 310 45 135 air

playsound custom.electric master @a 308 45 133 2

execute positioned ~ ~ ~1 run function puzzle:active_wire
execute positioned ~ ~ ~-1 run function puzzle:active_wire

scoreboard players set #pp_4_1 var 1