scoreboard players add #open_door_5_5 var 1

execute if score #open_door_5_5 var matches 1 run fill 352 68 148 350 70 148 air
execute if score #open_door_5_5 var matches 1 run playsound custom.electric master @a 352 68 148 3

scoreboard players set #pp_5_14 var 1