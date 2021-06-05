scoreboard players add #open_door3 var 1
scoreboard players add #open_door4 var 1
scoreboard players add #open_door5 var 1
scoreboard players add #fan_on1 var 1

execute if score #fan_on1 var matches 2.. run tag @e[tag=fan,x=269,y=37,z=148,dx=0,dy=0,dz=0] add on

execute if score #open_door3 var matches 1 run fill 255 38 136 263 41 136 air
execute unless score #open_door3 var matches 1 run fill 255 38 136 263 41 136 brown_stained_glass

execute if score #open_door4 var matches 1 run fill 263 38 148 255 41 148 air
execute unless score #open_door4 var matches 1 run fill 263 38 148 255 41 148 brown_stained_glass

execute if score #open_door5 var matches 3.. run fill 276 46 144 276 48 146 air

playsound custom.electric master @a 255 38 136 2

execute positioned ~ ~3 ~1 run function puzzle:active_wire
execute positioned ~ ~3 ~-1 run function puzzle:active_wire

setblock 276 49 148 redstone_block

setblock 269 36 146 redstone_block

scoreboard players set #pp_3_2 var 1