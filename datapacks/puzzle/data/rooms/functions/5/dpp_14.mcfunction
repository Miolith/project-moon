scoreboard players remove #open_door_5_5 var 1

execute if score #open_door_5_5 var matches 0 run fill 352 68 148 350 70 148 brown_stained_glass
execute if score #open_door_5_5 var matches 0 run playsound custom.electric master @a 352 68 148 3

scoreboard players set $pp_14 room5_vars 0