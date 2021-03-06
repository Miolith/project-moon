scoreboard players remove #fan_on2 var 1
scoreboard players remove #fan_on3 var 1
scoreboard players remove #open_door6 var 1


execute unless score #fan_on2 var matches 1 run tag @e[type=armor_stand,x=309,y=37,z=144,dx=0,dy=0,dz=0] add on
execute if score #fan_on2 var matches 1 run tag @e[type=armor_stand,x=309,y=37,z=144,dx=0,dy=0,dz=0] remove on

execute unless score #fan_on3 var matches 1.. run tag @e[type=armor_stand,x=309,y=37,z=134,dx=0,dy=0,dz=0] remove on

execute if score #open_door6 var matches 1 run fill 308 45 133 310 45 135 brown_stained_glass
execute unless score #open_door6 var matches 1 run fill 308 45 133 310 45 135 air

fill 299 38 130 296 40 133 air replace brown_stained_glass 

playsound custom.electric master @a 308 45 133 2

execute positioned ~ ~ ~1 run function puzzle:deactivate_wire
execute positioned ~ ~ ~-1 run function puzzle:deactivate_wire

scoreboard players set #pp_4_1 var 0