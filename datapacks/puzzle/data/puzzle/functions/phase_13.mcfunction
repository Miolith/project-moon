#ROOM 4

scoreboard players add #animation_timer timer 1

#closing door animation

execute if score #animation_timer timer matches 1..11 positioned 293 46 144 align xyz run function puzzle:close_doors
execute if score #animation_timer timer matches 1 run playsound minecraft:entity.generic.extinguish_fire master @a 293 46 144
execute if score #animation_timer timer matches 11 run playsound minecraft:entity.generic.extinguish_fire master @a 293 46 144

#============================================================================

effect clear @e[x=282,y=13,z=116,dx=41,dy=53,dz=39] levitation

# Teleportation pad particle effect
execute as @e[type=item_frame,tag=tp_pad] run function puzzle:tp_pad/tp_pad_animation

execute if score #pp_4_1 var matches 0 if block 314 38 139 heavy_weighted_pressure_plate[power=1] positioned 314 38 139 run function puzzle:rooms/room_4/pp_1
execute if score #pp_4_1 var matches 1 if block 314 38 139 heavy_weighted_pressure_plate[power=0] positioned 314 38 139 run function puzzle:rooms/room_4/dpp_1

execute if score #pp_4_2 var matches 0 if block 304 46 144 heavy_weighted_pressure_plate[power=1] run function puzzle:rooms/room_4/pp_2
execute if score #pp_4_2 var matches 1 if block 304 46 144 heavy_weighted_pressure_plate[power=0] run function puzzle:rooms/room_4/dpp_2

execute if score #pp_4_3 var matches 0 if block 290 35 139 heavy_weighted_pressure_plate[power=1] positioned 290 35 139 run function puzzle:rooms/room_4/pp_3
execute if score #pp_4_3 var matches 1 if block 290 35 139 heavy_weighted_pressure_plate[power=0] positioned 290 35 139 run function puzzle:rooms/room_4/dpp_3

# Pressure plate to open the exit

execute if score #pp_4_4 var matches 0 if block 318 48 137 heavy_weighted_pressure_plate[power=1] run function puzzle:rooms/room_4/pp_4
execute if score #pp_4_4 var matches 1 if block 318 48 137 heavy_weighted_pressure_plate[power=0] run function puzzle:rooms/room_4/dpp_4


execute as b13d0ca6-dead-450b-b83c-62aaf517f7e0 at @s if entity @s[tag=on] run function puzzle:fans/fan_up
execute as b13d0ca6-dead-450b-b83c-62aaf517f7e0 at @s if entity @s[tag=on] run function puzzle:sounds/fan1
execute as b13d0ca6-dead-450b-b83c-62aaf517f7e0 at @s if entity @s[tag=!on] run stopsound @a master custom.fan1
execute as b13d0ca6-dead-450b-b83c-62aaf517f7e0 if entity @s[tag=!on] run scoreboard players set @s timer 0


 # The timing to put the block above the electrical barrier needs to be hardcoded
execute as 7eb0f4b2-8a12-4826-9cd7-c2e2b041c046 at @s if score #fan_on3 var matches 1 run function puzzle:rooms/room_4/lower_up_fan
execute as 7eb0f4b2-8a12-4826-9cd7-c2e2b041c046 at @s if score #fan_on3 var matches 2 run function puzzle:rooms/room_4/higher_up_fan
execute as 7eb0f4b2-8a12-4826-9cd7-c2e2b041c046 at @s if entity @s[tag=on] run function puzzle:sounds/fan2
execute as 7eb0f4b2-8a12-4826-9cd7-c2e2b041c046 at @s if entity @s[tag=!on] run stopsound @a master custom.fan2
execute as 7eb0f4b2-8a12-4826-9cd7-c2e2b041c046 if entity @s[tag=!on] run scoreboard players set @s timer 0



execute as 2e8a2901-f133-4784-854a-cee834aba0d5 at @s if entity @s[tag=on] run function puzzle:fans/fan_east
execute as 2e8a2901-f133-4784-854a-cee834aba0d5 at @s if entity @s[tag=on] run function puzzle:sounds/fan3
execute as 2e8a2901-f133-4784-854a-cee834aba0d5 at @s if entity @s[tag=!on] run stopsound @a master custom.fan3
execute as 2e8a2901-f133-4784-854a-cee834aba0d5 if entity @s[tag=!on] run scoreboard players set @s timer 0

# Teleportation pads
execute as @a[x=300,y=45,z=144,dx=0,dy=2,dz=0] at @s run playsound minecraft:entity.enderman.teleport master @s 301 46 134 3
tp @a[x=300,y=45,z=144,dx=0,dy=2,dz=0] 301 46 134 -90 ~

execute as @a[x=300,y=45,z=134,dx=0,dy=2,dz=0] at @s run playsound minecraft:entity.enderman.teleport master @s 301 46 144 3
tp @a[x=300,y=45,z=134,dx=0,dy=2,dz=0] 301 46 144 -90 ~

# TODO : teleportation pad downstairs