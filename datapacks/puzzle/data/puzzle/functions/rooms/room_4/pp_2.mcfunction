scoreboard players add #fan_on2 var 1
scoreboard players add #fan_on3 var 1
scoreboard players add #open_door6 var 1


execute unless score #fan_on2 var matches 1 run tag b13d0ca6-dead-450b-b83c-62aaf517f7e0 add on
execute if score #fan_on2 var matches 1 run tag b13d0ca6-dead-450b-b83c-62aaf517f7e0 remove on

execute if score #fan_on3 var matches 1.. run tag @e[type=armor_stand,x=309,y=37,z=134,dx=0,dy=0,dz=0] add on

execute if score #open_door6 var matches 1 run fill 308 45 133 310 45 135 brown_stained_glass
execute unless score #open_door6 var matches 1 run fill 308 45 133 310 45 135 air

playsound custom.electric master @a 308 45 133 2

scoreboard players set #pp_4_2 var 1