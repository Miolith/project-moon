scoreboard players add #open_door_5_2 var 1

execute if score #open_door_5_2 var matches 1.. run fill 367 46 133 367 48 135 air
execute if score #open_door_5_2 var matches 1 run playsound custom.electric master @a 367 46 133
scoreboard players set #pp_5_2 var 1