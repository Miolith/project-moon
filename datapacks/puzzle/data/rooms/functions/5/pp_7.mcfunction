scoreboard players add #open_door_5_2 var 1

execute if score #open_door_5_2 var matches 1.. run fill 367 46 133 367 48 135 air
fill 368 49 135 368 49 133 air
execute if score #open_door_5_2 var matches 1 run playsound custom.electric master @a 367 46 133
scoreboard players set $pp_7 room5_vars 1