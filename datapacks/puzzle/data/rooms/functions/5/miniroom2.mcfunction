execute if entity @e[x=357,y=70,z=160,dx=0,tag=activated] run setblock 359 66 175 redstone_block 
execute if entity @e[x=351,y=70,z=160,dx=0,tag=activated] run setblock 358 66 175 redstone_block 
execute if entity @e[x=345,y=70,z=160,dx=0,tag=activated] run setblock 357 66 175 redstone_block 
execute if entity @e[x=357,y=70,z=166,dx=0,tag=activated] run setblock 356 66 175 redstone_block 
execute if entity @e[x=351,y=70,z=166,dx=0,tag=activated] run setblock 355 66 175 redstone_block 
execute if entity @e[x=345,y=70,z=166,dx=0,tag=activated] run setblock 354 66 175 redstone_block 
execute if entity @e[x=351,y=70,z=171,dx=0,tag=activated] run setblock 353 66 175 redstone_block 
execute if entity @e[x=345,y=70,z=171,dx=0,tag=activated] run setblock 352 66 175 redstone_block

execute if block 352 66 175 redstone_block if block 353 66 175 redstone_block if block 354 66 175 redstone_block if block 355 66 175 redstone_block if block 356 66 175 redstone_block if block 357 66 175 redstone_block if block 358 66 175 redstone_block if block 359 66 175 redstone_block run fill 351 69 175 351 71 175 air

scoreboard players set #mini2_last_laser room5_vars -1
scoreboard players operation #mini2_last_laser room5_vars > @e[x=345,y=70,z=160,dx=13,dz=13,dy=0,tag=laser_post] laser_time
execute store result score #mini2_gametime room5_vars run time query gametime
scoreboard players operation #mini2_gametime room5_vars -= #25 var

execute if score #mini2_last_laser room5_vars = #mini2_gametime room5_vars run fill 352 66 175 359 66 175 stone
execute if score #mini2_last_laser room5_vars = #mini2_gametime room5_vars run fill 351 69 175 351 71 175 brown_stained_glass

execute if entity @e[x=351,y=70,z=178,dx=0,tag=activated] if score $miniroom2_door room5_vars matches 0 run function rooms:5/laser_opendoor
execute if entity @e[x=351,y=70,z=178,dx=0,tag=!activated] if score $miniroom2_door room5_vars matches 1 run function rooms:5/laser_closedoor

execute if score $miniroom2_pp1 room5_vars matches 0 if block 351 68 183 heavy_weighted_pressure_plate[power=1] run function rooms:5/miniroom2_pp1
execute if score $miniroom2_pp1 room5_vars matches 1 if block 351 68 183 heavy_weighted_pressure_plate[power=0] run function rooms:5/miniroom2_dpp1


execute if block 346 63 148 crimson_button[powered=true] if score $miniroom2_button room5_vars matches 0 run function rooms:5/miniroom2_button

execute as @a[x=353,y=67,z=151,dx=0,dy=2,dz=0] run playsound minecraft:entity.enderman.teleport master @s 351 68 153 3
tp @a[x=353,y=67,z=151,dx=0,dy=2,dz=0] 351 68 153

execute as @a[x=349,y=67,z=153,dx=0,dy=2,dz=0] run playsound minecraft:entity.enderman.teleport master @s 352 68 151 3
tp @a[x=349,y=67,z=153,dx=0,dy=2,dz=0] 352 68 151


execute as @a[x=351,y=67,z=187,dx=0,dy=2,dz=0] run playsound minecraft:entity.enderman.teleport master @s 347 62 150 3
tp @a[x=351,y=67,z=187,dx=0,dy=2,dz=0] 347 62 150 180 0

execute as @a[x=346,y=61,z=153,dx=0,dy=2,dz=0] run playsound minecraft:entity.enderman.teleport master @s 352 68 151 3
tp @a[x=346,y=61,z=153,dx=0,dy=2,dz=0] 351 68 185 180 0