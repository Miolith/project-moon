scoreboard players remove #open_door3 var 1
scoreboard players remove #open_door4 var 1
scoreboard players remove #open_door5 var 1
scoreboard players remove #fan_on1 var 1

execute if score #fan_on1 var matches ..1 run tag @e[tag=fan,x=269,y=37,z=148,dx=0,dy=0,dz=0] remove on

execute if score #open_door3 var matches 1 run fill 255 38 136 263 41 136 air
execute unless score #open_door3 var matches 1 run fill 255 38 136 263 41 136 brown_stained_glass

execute if score #open_door4 var matches 1 run fill 263 38 148 255 41 148 air
execute unless score #open_door4 var matches 1 run fill 263 38 148 255 41 148 brown_stained_glass

playsound custom.electric master @a 255 38 136 2
playsound custom.electric master @a 263 38 148 2

execute positioned ~ ~ ~1 run function puzzle:deactivate_wire
execute positioned ~ ~ ~-1 run function puzzle:deactivate_wire

setblock 276 49 148 air

execute if score #open_door5 var matches ..2 run fill 276 46 144 276 48 146 brown_stained_glass

setblock 269 36 146 air

scoreboard players set #pp_3_2 var 0