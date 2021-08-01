scoreboard players remove #open_door_5_4 var 1

execute if score #open_door_5_4 var matches 1 run fill 381 46 133 381 48 135 brown_stained_glass
execute if score #open_door_5_4 var matches 1 run playsound custom.electric master @a 381 46 133
setblock 381 49 136 minecraft:dead_tube_coral_block
function puzzle:deactivate_wire

scoreboard players set #pp_5_13 var 0