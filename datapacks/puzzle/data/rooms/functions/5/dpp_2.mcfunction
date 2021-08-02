scoreboard players remove #open_door_5_2 var 1

execute if score #open_door_5_2 var matches 0 run fill 367 46 133 367 48 135 brown_stained_glass
execute if score #open_door_5_2 var matches 0 run playsound custom.electric master @a 367 46 133
scoreboard players set $pp_2 room5_vars 0