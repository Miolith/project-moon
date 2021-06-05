scoreboard players add #open_door2 var 1
setblock 187 30 161 minecraft:redstone_block
function puzzle:active_wire
execute if score #open_door2 var matches 2 run playsound custom.electric master @a 187 28 157 2