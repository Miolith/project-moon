scoreboard players remove #open_door_5_6 var 1

execute if score #open_door_5_6 var matches 0 run fill 348 71 121 346 73 121 brown_stained_glass
execute if score #open_door_5_6 var matches 0 run playsound custom.electric master @a 348 71 121 3

scoreboard players set #pp_5_20 var 0