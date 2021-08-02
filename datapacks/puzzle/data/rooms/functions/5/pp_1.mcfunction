scoreboard players add #open_door_5_1 var 1

execute if score #open_door_5_1 var matches 1.. run fill 351 46 119 353 48 119 air
execute if score #open_door_5_1 var matches 1 run playsound custom.electric master @a 351 46 119
scoreboard players set $pp_1 room5_vars 1