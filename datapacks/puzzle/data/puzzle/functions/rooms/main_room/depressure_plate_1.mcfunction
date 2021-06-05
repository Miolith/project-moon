function puzzle:deactivate_wire
scoreboard players remove #open_door1 var 1
execute if score #open_door1 var matches 0 run playsound custom.electric master @a 84 15 169 2