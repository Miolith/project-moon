scoreboard players add #open_door_5_3 var 1

execute if score #open_door_5_3 var matches 1.. run fill 351 46 149 353 48 149 air
execute if score #open_door_5_3 var matches 1 run playsound custom.electric master @a 351 46 149
scoreboard players set #pp_5_3 var 1