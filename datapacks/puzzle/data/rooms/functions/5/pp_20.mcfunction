scoreboard players add #open_door_5_6 var 1

execute if score #open_door_5_6 var matches 1 run fill 348 71 121 346 73 121 air
execute if score #open_door_5_6 var matches 1 run playsound custom.electric master @a 348 71 121 3

scoreboard players set $pp_20 room5_vars 1