scoreboard players set #laser3 var 1

# Void
execute store success score #laser_temp1 var if entity @e[type=turtle,x=345,y=70,z=160,dx=0] as a4af7ec6-b7c8-4e68-a97b-f5d2a5829ea4 at @s run tp @s 345 70.5 161 180 0
execute if score #laser_temp1 var matches 1 run function puzzle:rooms/room_5/laser_reset



# Void
execute store success score #laser_temp2 var if entity @e[type=turtle,x=344,y=70,z=161,dx=0] as a4af7ec6-b7c8-4e68-a97b-f5d2a5829ea4 at @s run tp @s 345 70.5 161 90 0
execute if score #laser_temp2 var matches 1 run function puzzle:rooms/room_5/laser_reset



# Laser 6
execute store success score #laser_temp3 var unless score #laser_temp1 var matches 1 unless score #laser_temp2 var matches 1 if entity @e[type=turtle,x=345,y=70,z=162,dx=0] as a4af7ec6-b7c8-4e68-a97b-f5d2a5829ea4 at @s run tp @s 345 70.5 161 0 0

execute if score #laser_temp3 var matches 1 run setblock 345 73 167 minecraft:redstone_lamp[lit=true]
execute if score #laser_temp3 var matches 1 if score #laser6 var matches 0 run playsound block.beacon.activate master @a 345 70 167
execute if score #laser_temp3 var matches 1 if score #laser6 var matches 0 run schedule function puzzle:rooms/room_5/laser6 20t
execute if score #laser_temp3 var matches 1 if score #laser6 var matches 1 run function puzzle:rooms/room_5/laser_reset



# Laser 2
execute store success score #laser_temp4 var unless score #laser_temp1 var matches 1 unless score #laser_temp2 var matches 1 unless score #laser_temp3 var matches 1 if entity @e[type=turtle,x=346,y=70,z=161,dx=0] as a4af7ec6-b7c8-4e68-a97b-f5d2a5829ea4 at @s run tp @s 345 70.5 161 -90 0

execute if score #laser_temp4 var matches 1 run setblock 351 73 161 minecraft:redstone_lamp[lit=true]
execute if score #laser_temp4 var matches 1 if score #laser2 var matches 0 run playsound block.beacon.activate master @a 351 70 161
execute if score #laser_temp4 var matches 1 if score #laser2 var matches 0 run schedule function puzzle:rooms/room_5/laser2 20t
execute if score #laser_temp4 var matches 1 if score #laser2 var matches 1 run function puzzle:rooms/room_5/laser_reset



execute if entity @e[type=turtle,x=345.5,y=70,z=161.5,distance=..1.5] as a4af7ec6-b7c8-4e68-a97b-f5d2a5829ea4 at @s run function puzzle:rooms/room_5/laser_loop

execute if score #laser_temp1 var matches 0 if score #laser_temp2 var matches 0 if score #laser_temp3 var matches 0 if score #laser_temp4 var matches 0 run function puzzle:rooms/room_5/laser_reset

scoreboard players set #laser_temp1 var 0
scoreboard players set #laser_temp2 var 0
scoreboard players set #laser_temp3 var 0
scoreboard players set #laser_temp4 var 0