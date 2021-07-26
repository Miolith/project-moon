# This closes the door between rooms

execute as @e[type=armor_stand,tag=door_left,limit=1,sort=nearest] at @s run tp @s ~ ~ ~0.2
execute as @e[type=armor_stand,tag=door_right,limit=1,sort=nearest] at @s run tp @s ~ ~ ~-0.2

fill ~ ~ ~ ~ ~2 ~2 barrier