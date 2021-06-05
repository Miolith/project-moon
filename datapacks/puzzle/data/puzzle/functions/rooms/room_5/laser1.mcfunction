# Void
execute store success score #laser_temp2 var if entity @e[type=turtle,x=358,y=70,z=161,dx=0] as a4af7ec6-b7c8-4e68-a97b-f5d2a5829ea4 at @s run tp @s ~ ~ ~ -90 0
execute if score #laser_temp2 var matches 1 run function puzzle:rooms/room_5/laser_reset

# Laser 4
execute store success score #laser_temp3 var unless score #laser_temp2 var matches 1 if entity @e[type=turtle,x=357,y=70,z=162,dx=0] as a4af7ec6-b7c8-4e68-a97b-f5d2a5829ea4 at @s run tp @s ~ ~ ~ 0 0
execute if score #laser_temp3 var matches 1 run setblock 357 73 167 minecraft:redstone_lamp[lit=true]
execute if score #laser_temp3 var matches 1 run playsound block.beacon.activate master @a 357 70 167
execute if score #laser_temp3 var matches 1 run schedule function puzzle:rooms/room_5/laser4 20t

# Laser 2
execute store success score #laser_temp4 var unless score #laser_temp2 var matches 1 unless score #laser_temp3 var matches 1 if entity @e[type=turtle,x=356,y=70,z=161,dx=0] as a4af7ec6-b7c8-4e68-a97b-f5d2a5829ea4 at @s run tp @s ~ ~ ~ 90 0
execute if score #laser_temp4 var matches 1 run setblock 351 73 161 minecraft:redstone_lamp[lit=true]
execute if score #laser_temp4 var matches 1 run playsound block.beacon.activate master @a 351 70 161
execute if score #laser_temp4 var matches 1 run schedule function puzzle:rooms/room_5/laser2 20t



execute if entity @e[type=turtle,x=357.5,y=70,z=161.5,distance=..1.5] as a4af7ec6-b7c8-4e68-a97b-f5d2a5829ea4 at @s run function puzzle:rooms/room_5/laser_loop

execute if score #laser_temp1 var matches 0 if score #laser_temp2 var matches 0 if score #laser_temp3 var matches 0 if score #laser_temp4 var matches 0 run function puzzle:rooms/room_5/laser_reset

scoreboard players set #laser_temp1 var 0
scoreboard players set #laser_temp2 var 0
scoreboard players set #laser_temp3 var 0
scoreboard players set #laser_temp4 var 0