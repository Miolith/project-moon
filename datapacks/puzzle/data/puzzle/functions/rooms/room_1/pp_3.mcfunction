scoreboard players add #open_door2 var 1
setblock 187 31 161 minecraft:redstone_block
execute if score #open_door2 var matches 2 run playsound custom.electric master @a 187 28 157 2