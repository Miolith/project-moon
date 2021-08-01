# ROOM 3

scoreboard players add #animation_timer timer 1

#closing door animation

execute if score #animation_timer timer matches 1..11 positioned 246 38 141 align xyz run function puzzle:close_doors
execute if score #animation_timer timer matches 1 run playsound minecraft:entity.generic.extinguish_fire master @a 246 38 141
execute if score #animation_timer timer matches 11 run playsound minecraft:entity.generic.extinguish_fire master @a 246 38 141

#============================================================================

# Teleportation pad particle effect
execute as @e[type=item_frame,tag=tp_pad] run function puzzle:tp_pad/tp_pad_animation


execute if score #pp_3_1 var matches 0 if block 259 38 123 heavy_weighted_pressure_plate[power=1] positioned 259 38 123 run function puzzle:rooms/room_3/pp_1
execute if score #pp_3_1 var matches 1 if block 259 38 123 heavy_weighted_pressure_plate[power=0] positioned 259 38 123 run function puzzle:rooms/room_3/dpp_1

execute if score #pp_3_2 var matches 0 if block 259 36 142 heavy_weighted_pressure_plate[power=1] positioned 259 36 142 run function puzzle:rooms/room_3/pp_2
execute if score #pp_3_2 var matches 1 if block 259 36 142 heavy_weighted_pressure_plate[power=0] positioned 259 36 142 run function puzzle:rooms/room_3/dpp_2

execute if score #pp_3_3 var matches 0 if block 259 38 161 heavy_weighted_pressure_plate[power=1] positioned 259 38 161 run function puzzle:rooms/room_3/pp_3
execute if score #pp_3_3 var matches 1 if block 259 38 161 heavy_weighted_pressure_plate[power=0] positioned 259 38 161 run function puzzle:rooms/room_3/dpp_3

execute if score #pp_3_4 var matches 0 if block 268 46 141 heavy_weighted_pressure_plate[power=1] positioned 268 46 141 run function puzzle:rooms/room_3/pp_4
execute if score #pp_3_4 var matches 1 if block 268 46 141 heavy_weighted_pressure_plate[power=0] positioned 268 46 141 run function puzzle:rooms/room_3/dpp_4

effect clear @a levitation

execute as 0c6dd9ad-3b22-4733-b817-fda92daa85f1 at @s if entity @s[tag=on] run function puzzle:fans/fan_up
execute as 0c6dd9ad-3b22-4733-b817-fda92daa85f1 at @s if entity @s[tag=on] run function puzzle:sounds/fan1
execute as 0c6dd9ad-3b22-4733-b817-fda92daa85f1 at @s if entity @s[tag=!on] run stopsound @a master custom.fan1
execute as 0c6dd9ad-3b22-4733-b817-fda92daa85f1 if entity @s[tag=!on] run scoreboard players set @s timer 0

execute as @a[x=259,y=46,z=147,dx=0,dy=2,dz=0] at @s run playsound minecraft:entity.enderman.teleport master @s 265 46 131 3
tp @a[x=259,y=46,z=147,dx=0,dy=2,dz=0] 265 46 131

execute as @a[x=267,y=46,z=131,dx=0,dy=2,dz=0] at @s run playsound minecraft:entity.enderman.teleport master @s 261 46 147 3
tp @a[x=267,y=46,z=131,dx=0,dy=2,dz=0] 261 46 147

#============================================================================

#open door animation when the player is at 293 46 144

execute if entity @a[x=291,y=46,z=144,dx=0,dy=2,dz=2] if score #animation_timer timer matches 0.. run scoreboard players set #animation_timer timer -2000000010

execute if score #animation_timer timer matches -2000000010 run playsound minecraft:entity.generic.extinguish_fire master @a 293 46 144
execute if score #animation_timer timer matches -2000000000 run playsound minecraft:entity.generic.extinguish_fire master @a 293 46 144

execute if score #animation_timer timer matches -2000000010..-2000000000 positioned 293 46 144 align xyz run function puzzle:open_doors

execute if entity @a[x=295,y=46,z=144,dx=0,dy=2,dz=2] run scoreboard players set #animation_timer timer 0
execute if entity @a[x=295,y=46,z=144,dx=0,dy=2,dz=2] run scoreboard players set #gamestep gamestep 13