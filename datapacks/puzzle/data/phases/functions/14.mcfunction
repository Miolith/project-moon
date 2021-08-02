#Room 5 - dungeon

execute if score $pp_1 room5_vars matches 0 if block 352 46 131 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_1
execute if score $pp_1 room5_vars matches 1 if block 352 46 131 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_1

execute if score $pp_2 room5_vars matches 0 if block 355 46 134 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_2
execute if score $pp_2 room5_vars matches 1 if block 355 46 134 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_2

execute if score $pp_3 room5_vars matches 0 if block 352 46 137 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_3
execute if score $pp_3 room5_vars matches 1 if block 352 46 137 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_3

execute if score $pp_4 room5_vars matches 0 if block 352 62 120 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_4
execute if score $pp_4 room5_vars matches 1 if block 352 62 120 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_4

execute if score $pp_5 room5_vars matches 0 if block 352 46 117 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_5
execute if score $pp_5 room5_vars matches 1 if block 352 46 117 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_5

execute if score $pp_6 room5_vars matches 0 if block 340 63 138 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_6
execute if score $pp_6 room5_vars matches 1 if block 340 63 138 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_6

#Open the 2nd door
execute if score $pp_7 room5_vars matches 0 if block 369 46 134 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_7
execute if score $pp_7 room5_vars matches 1 if block 369 46 134 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_7

#Open the 3rd door
execute if score $pp_8 room5_vars matches 0 if block 352 46 151 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_8
execute if score $pp_8 room5_vars matches 1 if block 352 46 151 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_8

#open door and let water fall down (1)
execute if score $pp_9 room5_vars matches 0 if block 348 46 165 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_9
execute if score $pp_9 room5_vars matches 1 if block 348 46 165 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_9

#open door and let water fall down (2)
execute if score $pp_10 room5_vars matches 0 if block 354 46 165 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_10
execute if score $pp_10 room5_vars matches 1 if block 354 46 165 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_10

#open door and let water fall down (3)
execute if score $pp_11 room5_vars matches 0 if block 363 46 151 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_11
execute if score $pp_11 room5_vars matches 1 if block 363 46 151 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_11

#Open the door that leads to new module (left)
execute if score $pp_12 room5_vars matches 0 if block 374 46 133 heavy_weighted_pressure_plate[power=1] positioned 374 46 133 run function rooms:5/pp_12
execute if score $pp_12 room5_vars matches 1 if block 374 46 133 heavy_weighted_pressure_plate[power=0] positioned 374 46 133 run function rooms:5/dpp_12

#Open the door that leads to new module (right)
execute if score $pp_13 room5_vars matches 0 if block 374 46 135 heavy_weighted_pressure_plate[power=1] positioned 374 46 135 run function rooms:5/pp_13
execute if score $pp_13 room5_vars matches 1 if block 374 46 135 heavy_weighted_pressure_plate[power=0] positioned 374 46 135 run function rooms:5/dpp_13

#open first beam powered door
execute if score $pp_14 room5_vars matches 0 if block 351 68 150 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_14
execute if score $pp_14 room5_vars matches 1 if block 351 68 150 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_14


# ========= First mini game ===========

#First mini-game 4th pressure plate 
execute if score $pp_18 room5_vars matches 0 if block 351 69 100 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_18
execute if score $pp_18 room5_vars matches 1 if block 351 69 100 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_18

#First mini-game 5th pressure plate
execute if score $pp_19 room5_vars matches 0 if block 355 69 100 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_19
execute if score $pp_19 room5_vars matches 1 if block 355 69 100 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_19

# Button to reset the cube or make it spawn
execute if score $button_1 room5_vars matches 0 if block 357 72 105 crimson_button[powered=true] run function rooms:5/button_1
execute if score $button_1 room5_vars matches 1 if block 357 72 105 crimson_button[powered=false] run scoreboard players set $button_1 room5_vars 0

# =======================================

#open third beam powered door
execute if score $pp_20 room5_vars matches 0 if block 347 71 119 heavy_weighted_pressure_plate[power=1] run function rooms:5/pp_20
execute if score $pp_20 room5_vars matches 1 if block 347 71 119 heavy_weighted_pressure_plate[power=0] run function rooms:5/dpp_20

execute as cfccd1fe-dbb6-4e7d-95dc-de4467ef9dc7 at @s run function rooms:5/fan

execute as d70393ff-e2e1-4963-858c-fd63e88f9a02 at @s if entity @s[tag=on] run function puzzle:fans/fan_up
execute as d70393ff-e2e1-4963-858c-fd63e88f9a02 at @s if entity @s[tag=on] run function puzzle:sounds/fan1
execute as d70393ff-e2e1-4963-858c-fd63e88f9a02 at @s if entity @s[tag=!on] run stopsound @a master custom.fan1
execute as d70393ff-e2e1-4963-858c-fd63e88f9a02 if entity @s[tag=!on] run scoreboard players set @s timer 0

execute positioned 333 62 97 as @e[type=turtle,tag=71771,distance=..4] run tp @s 334 63 124

execute as 6ebde7c0-1a7a-4cab-b32d-8d94c20cd888 run function rooms:5/arrow_x
execute as bc9e129d-d6a6-488b-90e1-9c6f8488bdaa run function rooms:5/arrow_y


#End Crystal
execute as 24e9f9b1-aa6a-4694-ba40-454b40becd6e at @s if score #crystal_on var matches 1 if entity @e[type=area_effect_cloud,tag=laser,distance=..1] run function rooms:5/crystal

execute if score #beam_duration timer matches 1.. run function rooms:5/beam_duration


# ============== Teleportation =================

# tp pad particle effect 
execute as @e[type=item_frame,tag=tp_pad] run function puzzle:tp_pad/tp_pad_animation

# -------------- main tp pad 
execute as @a[x=352,y=45,z=134,dx=0,dy=2,dz=0] run playsound minecraft:entity.enderman.teleport master @s 344 78 134 3
tp @a[x=352,y=45,z=134,dx=0,dy=2,dz=0] 346 78 134

execute as @a[x=345,y=78,z=134,dx=0,dy=2,dz=0] run playsound minecraft:entity.enderman.teleport master @s 351 46 134 3
tp @a[x=345,y=78,z=134,dx=0,dy=2,dz=0] 351 46 134

# --------------- side tp pad

execute as @a[x=343,y=45,z=116,dx=0,dy=2,dz=0] run playsound minecraft:entity.enderman.teleport master @s 340 62 118 3
tp @a[x=343,y=45,z=116,dx=0,dy=2,dz=0] 340 62 118

execute as @a[x=339,y=61,z=119,dx=0,dy=2,dz=0] run playsound minecraft:entity.enderman.teleport master @s 344 46 115 3
tp @a[x=339,y=61,z=119,dx=0,dy=2,dz=0] 344 46 115

# ================ End - Teleportation ================

execute if entity @e[type=area_effect_cloud,tag=laser,x=362,y=58,z=134,dx=0,dy=1,dz=0] positioned 362 58 134 run function puzzle:explosion
execute if entity @e[type=area_effect_cloud,tag=laser,x=365,y=67,z=134,dx=0,dy=1,dz=0] positioned 365 67 134 run function puzzle:explosion

# Mini game room 2 ( laser )
execute if score #laser1 var matches 0 if entity @e[type=area_effect_cloud,x=357,y=70,z=160,dx=0,dy=0,dz=-1] positioned 357 72 161 run function rooms:5/laser

execute as @a[tag=spectate1] at @s run gamemode spectator @s
execute as @a[tag=spectate1] at @s run spectate cf13f0f3-656a-4378-b374-59ac89fc04dc @s