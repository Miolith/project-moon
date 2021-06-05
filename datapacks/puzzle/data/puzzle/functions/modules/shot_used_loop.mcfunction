scoreboard players remove @s shot_range 1
particle minecraft:dust 0 1 1 1 ~ ~ ~ 0 0 0 0 5 force
execute if score @s shot_range matches 0 positioned ^ ^ ^0.25 run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -1, Tags: ["laser"]}
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -1, Tags: ["laser"]}
execute if score @s shot_range matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ air run function puzzle:modules/shot_used_loop