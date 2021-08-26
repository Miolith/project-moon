particle minecraft:dust 0 1 1 1 ~ ~ ~ 0 0 0 0 5 force
execute unless block ~ ~ ~ air unless entity @s[distance=..1] as @e[type=marker,tag=laser_post,distance=..1,limit=1] at @s run function puzzle:laser/receive
execute if block ~ ~ ~ air positioned ^ ^ ^0.5 run function puzzle:laser/loop