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