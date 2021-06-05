scoreboard players add #open_door3 var 1
scoreboard players add #open_door5 var 1

execute if score #open_door3 var matches 1 run fill 255 38 136 263 41 136 air
execute unless score #open_door3 var matches 1 run fill 255 38 136 263 41 136 brown_stained_glass

playsound custom.electric master @a 255 38 136 2
function puzzle:active_wire

setblock 276 48 148 redstone_block

execute if score #open_door5 var matches 3.. run fill 276 46 144 276 48 146 air

scoreboard players set #pp_3_1 var 1