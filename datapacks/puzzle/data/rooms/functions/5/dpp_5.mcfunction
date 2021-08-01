scoreboard players remove #open_door_5_1 var 1

execute if score #open_door_5_1 var matches 0 run fill 351 46 119 353 48 119 brown_stained_glass
execute if score #open_door_5_1 var matches 0 run playsound custom.electric master @a 351 46 119
scoreboard players set #pp_5_5 var 0