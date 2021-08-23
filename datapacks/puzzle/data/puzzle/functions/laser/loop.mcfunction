tag @s remove activated
particle minecraft:dust 0 1 1 1 ~ ~ ~ 0 0 0 0 5 force
execute unless block ~ ~ ~ air as @e[type=marker,tag=laser_post,distance=..1] run tag @s add activated
execute unless block ~ ~ ~ air as @e[type=marker,tag=laser_post,distance=..1] run schedule function puzzle:laser/activation 20t
execute if block ~ ~ ~ air positioned ^ ^ ^0.5 run function puzzle:laser/loop