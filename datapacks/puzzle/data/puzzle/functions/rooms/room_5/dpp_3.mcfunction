scoreboard players remove #open_door_5_3 var 1

execute if score #open_door_5_3 var matches 0 run fill 351 46 149 353 48 149 brown_stained_glass
execute if score #open_door_5_3 var matches 0 run playsound custom.electric master @a 351 46 149
scoreboard players set #pp_5_3 var 0