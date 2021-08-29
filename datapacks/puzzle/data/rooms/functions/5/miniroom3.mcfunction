execute if entity @e[x=328,y=73,z=128,dx=0,tag=activated] run setblock 329 69 136 redstone_block 
execute if entity @e[x=322,y=73,z=128,dx=0,tag=activated] run setblock 328 69 136 redstone_block 
execute if entity @e[x=322,y=73,z=134,dx=0,tag=activated] run setblock 327 69 136 redstone_block

execute if block 329 69 136 redstone_block if block 328 69 136 redstone_block if block 327 69 136 redstone_block if score $miniroom3_door1 room5_vars matches 0 run function rooms:5/miniroom3_open1

scoreboard players set #mini3_last_laser room5_vars -1
scoreboard players operation #mini3_last_laser room5_vars > @e[x=322,y=73,z=128,dx=6,dz=6,dy=0,tag=laser_post] laser_time
execute store result score #mini3_gametime room5_vars run time query gametime
scoreboard players operation #mini3_gametime room5_vars -= #25 var

execute if score #mini3_last_laser room5_vars = #mini3_gametime room5_vars run fill 329 69 136 327 69 136 stone
execute if score #mini3_last_laser room5_vars = #mini3_gametime room5_vars if score $miniroom3_door1 room5_vars matches 1 run function rooms:5/miniroom3_close1


execute if entity @e[x=322,y=73,z=139,dx=0,tag=activated] if score $miniroom3_door2 room5_vars matches 0 run function rooms:5/miniroom3_open2
execute if entity @e[x=322,y=73,z=139,dx=0,tag=!activated] if score $miniroom3_door2 room5_vars matches 1 run function rooms:5/miniroom3_close2

execute if entity @e[x=328,y=73,z=128,dx=0,tag=activated] run fill 328 72 129 328 74 129 brown_stained_glass
execute if score #mini3_last_laser room5_vars = #mini3_gametime room5_vars run fill 328 72 129 328 74 129 air

execute if entity @e[x=333,y=73,z=128,dx=0,tag=activated] if score $miniroom3_block room5_vars matches 0 positioned 335 70 128 run function rooms:5/miniroom3_block
execute if entity @e[x=333,y=73,z=128,dx=0,tag=!activated] if score $miniroom3_block room5_vars matches 1 run scoreboard players set $miniroom3_block room5_vars 0

execute as @a[x=345,y=70,z=117,dx=0,dy=2,dz=0] run playsound minecraft:entity.enderman.teleport master @s 335 71 117 3
tp @a[x=345,y=70,z=117,dx=0,dy=2,dz=0] 335 71 117

execute as @a[x=337,y=70,z=117,dx=0,dy=2,dz=0] run playsound minecraft:entity.enderman.teleport master @s 346 71 118 3
tp @a[x=337,y=70,z=117,dx=0,dy=2,dz=0] 346 71 118

execute if block 341 71 145 crimson_button[powered=true] if score $miniroom3_button room5_vars matches 0 run function rooms:5/miniroom3_button