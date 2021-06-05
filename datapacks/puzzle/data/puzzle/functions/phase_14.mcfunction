#Room 5 - dungeon

execute if score #pp_5_1 var matches 0 if block 352 46 131 polished_blackstone_pressure_plate[powered=true] run function puzzle:rooms/room_5/pp_1
execute if score #pp_5_1 var matches 1 if block 352 46 131 polished_blackstone_pressure_plate[powered=false] run function puzzle:rooms/room_5/dpp_1

execute if score #pp_5_2 var matches 0 if block 355 46 134 polished_blackstone_pressure_plate[powered=true] run function puzzle:rooms/room_5/pp_2
execute if score #pp_5_2 var matches 1 if block 355 46 134 polished_blackstone_pressure_plate[powered=false] run function puzzle:rooms/room_5/dpp_2

execute if score #pp_5_3 var matches 0 if block 352 46 137 polished_blackstone_pressure_plate[powered=true] run function puzzle:rooms/room_5/pp_3
execute if score #pp_5_3 var matches 1 if block 352 46 137 polished_blackstone_pressure_plate[powered=false] run function puzzle:rooms/room_5/dpp_3

execute if score #pp_5_4 var matches 0 if block 352 62 120 heavy_weighted_pressure_plate[power=1] run function puzzle:rooms/room_5/pp_4
execute if score #pp_5_4 var matches 1 if block 352 62 120 heavy_weighted_pressure_plate[power=0] run function puzzle:rooms/room_5/dpp_4

execute if score #pp_5_5 var matches 0 if block 352 46 117 heavy_weighted_pressure_plate[power=1] run function puzzle:rooms/room_5/pp_5
execute if score #pp_5_5 var matches 1 if block 352 46 117 heavy_weighted_pressure_plate[power=0] run function puzzle:rooms/room_5/dpp_5

execute if score #pp_5_6 var matches 0 if block 340 63 138 heavy_weighted_pressure_plate[power=1] run function puzzle:rooms/room_5/pp_6
execute if score #pp_5_6 var matches 1 if block 340 63 138 heavy_weighted_pressure_plate[power=0] run function puzzle:rooms/room_5/dpp_6

#Open the 2nd door
execute if score #pp_5_7 var matches 0 if block 369 46 134 heavy_weighted_pressure_plate[power=1] run function puzzle:rooms/room_5/pp_7
execute if score #pp_5_7 var matches 1 if block 369 46 134 heavy_weighted_pressure_plate[power=0] run function puzzle:rooms/room_5/dpp_7

#Open the 3rd door
execute if score #pp_5_8 var matches 0 if block 352 46 151 heavy_weighted_pressure_plate[power=1] run function puzzle:rooms/room_5/pp_8
execute if score #pp_5_8 var matches 1 if block 352 46 151 heavy_weighted_pressure_plate[power=0] run function puzzle:rooms/room_5/dpp_8

#open door and let water fall down (1)
execute if score #pp_5_9 var matches 0 if block 348 46 165 heavy_weighted_pressure_plate[power=1] run function puzzle:rooms/room_5/pp_9
execute if score #pp_5_9 var matches 1 if block 348 46 165 heavy_weighted_pressure_plate[power=0] run function puzzle:rooms/room_5/dpp_9

#open door and let water fall down (2)
execute if score #pp_5_10 var matches 0 if block 354 46 165 heavy_weighted_pressure_plate[power=1] run function puzzle:rooms/room_5/pp_10
execute if score #pp_5_10 var matches 1 if block 354 46 165 heavy_weighted_pressure_plate[power=0] run function puzzle:rooms/room_5/dpp_10

#open door and let water fall down (3)
execute if score #pp_5_11 var matches 0 if block 363 46 151 heavy_weighted_pressure_plate[power=1] run function puzzle:rooms/room_5/pp_11
execute if score #pp_5_11 var matches 1 if block 363 46 151 heavy_weighted_pressure_plate[power=0] run function puzzle:rooms/room_5/dpp_11

#Open the door that leads to new module (left)
execute if score #pp_5_12 var matches 0 if block 374 46 133 heavy_weighted_pressure_plate[power=1] positioned 374 46 133 run function puzzle:rooms/room_5/pp_12
execute if score #pp_5_12 var matches 1 if block 374 46 133 heavy_weighted_pressure_plate[power=0] positioned 374 46 133 run function puzzle:rooms/room_5/dpp_12

#Open the door that leads to new module (right)
execute if score #pp_5_13 var matches 0 if block 374 46 135 heavy_weighted_pressure_plate[power=1] positioned 374 46 135 run function puzzle:rooms/room_5/pp_13
execute if score #pp_5_13 var matches 1 if block 374 46 135 heavy_weighted_pressure_plate[power=0] positioned 374 46 135 run function puzzle:rooms/room_5/dpp_13

#open first beam powered door
execute if score #pp_5_14 var matches 0 if block 351 68 150 heavy_weighted_pressure_plate[power=1] run function puzzle:rooms/room_5/pp_14
execute if score #pp_5_14 var matches 1 if block 351 68 150 heavy_weighted_pressure_plate[power=0] run function puzzle:rooms/room_5/dpp_14

#First mini-game 4th pp
execute if score #pp_5_18 var matches 0 if block 351 62 100 heavy_weighted_pressure_plate[power=1] run function puzzle:rooms/room_5/pp_18
execute if score #pp_5_18 var matches 1 if block 351 62 100 heavy_weighted_pressure_plate[power=0] run function puzzle:rooms/room_5/dpp_18

#First mini-game 5th pp
execute if score #pp_5_19 var matches 0 if block 355 62 100 heavy_weighted_pressure_plate[power=1] run function puzzle:rooms/room_5/pp_19
execute if score #pp_5_19 var matches 1 if block 355 62 100 heavy_weighted_pressure_plate[power=0] run function puzzle:rooms/room_5/dpp_19

#open third beam powered door
execute if score #pp_5_20 var matches 0 if block 347 71 119 heavy_weighted_pressure_plate[power=1] run function puzzle:rooms/room_5/pp_20
execute if score #pp_5_20 var matches 1 if block 347 71 119 heavy_weighted_pressure_plate[power=0] run function puzzle:rooms/room_5/dpp_20

execute as cfccd1fe-dbb6-4e7d-95dc-de4467ef9dc7 at @s run function puzzle:rooms/room_5/fan

execute as d70393ff-e2e1-4963-858c-fd63e88f9a02 at @s if entity @s[tag=on] run function puzzle:fans/fan_up
execute as d70393ff-e2e1-4963-858c-fd63e88f9a02 at @s if entity @s[tag=on] run function puzzle:sounds/fan1
execute as d70393ff-e2e1-4963-858c-fd63e88f9a02 at @s if entity @s[tag=!on] run stopsound @a master custom.fan1
execute as d70393ff-e2e1-4963-858c-fd63e88f9a02 if entity @s[tag=!on] run scoreboard players set @s timer 0

execute positioned 333 62 97 as @e[type=turtle,tag=71771,distance=..4] run tp @s 334 63 124


execute as 6c5445cf-cdb8-4019-98ca-3d445fa91d13 run function puzzle:tp_pad/tp_pad_animation
execute as 8742a61d-224f-4975-b87c-39d6459732e6 run function puzzle:tp_pad/tp_pad_animation

execute as 6ebde7c0-1a7a-4cab-b32d-8d94c20cd888 run function puzzle:rooms/room_5/arrow_x
execute as bc9e129d-d6a6-488b-90e1-9c6f8488bdaa run function puzzle:rooms/room_5/arrow_y


#End Crystal
execute as 24e9f9b1-aa6a-4694-ba40-454b40becd6e at @s if score #crystal_on var matches 1 if entity @e[type=area_effect_cloud,tag=laser,distance=..1] run function puzzle:rooms/room_5/crystal

execute if score #beam_duration timer matches 1.. run function puzzle:rooms/room_5/beam_duration

execute as @a[x=352,y=45,z=134,dx=0,dy=2,dz=0] run playsound minecraft:entity.enderman.teleport master @s 344 78 134 3
tp @a[x=352,y=45,z=134,dx=0,dy=2,dz=0] 346 78 134

execute as @a[x=345,y=78,z=134,dx=0,dy=2,dz=0] run playsound minecraft:entity.enderman.teleport master @s 351 46 134 3
tp @a[x=345,y=78,z=134,dx=0,dy=2,dz=0] 351 46 134

execute if entity @e[type=area_effect_cloud,tag=laser,x=362,y=58,z=134,dx=0,dy=1,dz=0] positioned 362 58 134 run function puzzle:explosion
execute if entity @e[type=area_effect_cloud,tag=laser,x=365,y=67,z=134,dx=0,dy=1,dz=0] positioned 365 67 134 run function puzzle:explosion

# Mini game room 2 ( laser )
execute if score #laser1 var matches 0 if entity @e[type=area_effect_cloud,x=357,y=70,z=160,dx=0,dy=0,dz=-1] positioned 357 72 161 run function puzzle:rooms/room_5/laser

execute as @a[tag=spectate1] at @s run gamemode spectator @s
execute as @a[tag=spectate1] at @s run spectate cf13f0f3-656a-4378-b374-59ac89fc04dc @s