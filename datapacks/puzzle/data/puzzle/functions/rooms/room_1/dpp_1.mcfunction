execute if score #open_door2 var matches 2 run playsound custom.electric master @a 187 28 157 2
scoreboard players remove #open_door2 var 1
setblock 187 30 161 minecraft:stone
function puzzle:deactivate_wire