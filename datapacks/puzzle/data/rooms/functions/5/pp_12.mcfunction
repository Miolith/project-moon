scoreboard players add #open_door_5_4 var 1

execute if score #open_door_5_4 var matches 2 run fill 381 46 133 381 48 135 air
execute if score #open_door_5_4 var matches 2 run playsound custom.electric master @a 381 46 133
setblock 381 49 132 minecraft:redstone_block
function puzzle:active_wire

scoreboard players set $pp_12 room5_vars 1