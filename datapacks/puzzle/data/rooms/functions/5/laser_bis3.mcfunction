scoreboard players set $laser_bis3 room5_vars 1

tp @e[type=area_effect_cloud,tag=laser_bis] 322 73.5 134

# Laser door
execute store success score #laser_temp3 var unless score #laser_temp2 var matches 1 if entity @e[type=turtle,x=322,y=73,z=135,dx=0] as @e[type=area_effect_cloud,tag=laser_bis] at @s run tp @s ~ ~ ~ 0 0
execute if score #laser_temp3 var matches 1 run playsound block.beacon.activate master @a 322 73 135
execute if score #laser_temp3 var matches 1 run schedule function rooms:5/laser_bis_opendoor 20t

# Laser 2
execute store success score #laser_temp4 var unless score #laser_temp2 var matches 1 unless score #laser_temp3 var matches 1 if entity @e[type=turtle,x=322,y=73,z=133,dx=0] as @e[type=area_effect_cloud,tag=laser_bis] at @s run tp @s ~ ~ ~ 180 0
execute if score #laser_temp4 var matches 1 run setblock 322 76 133 minecraft:redstone_lamp[lit=true]
execute if score #laser_temp4 var matches 1 run playsound block.beacon.activate master @a 322 73 133
execute if score #laser_temp4 var matches 1 run schedule function rooms:5/laser_bis2 20t



execute if entity @e[type=turtle,x=322.5,y=73,z=134.5,distance=..1.5] as @e[type=area_effect_cloud,tag=laser_bis] at @s run function rooms:5/laser_loop

execute if score #laser_temp1 var matches 0 if score #laser_temp2 var matches 0 if score #laser_temp3 var matches 0 if score #laser_temp4 var matches 0 run function rooms:5/laser_bis_reset

scoreboard players set #laser_temp1 var 0
scoreboard players set #laser_temp2 var 0
scoreboard players set #laser_temp3 var 0
scoreboard players set #laser_temp4 var 0

fill 329 71 137 327 73 137 air