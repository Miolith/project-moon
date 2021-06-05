execute store result score @s item_rotation run data get entity @s ItemRotation
execute if score @s item_rotation matches 0..2 run data modify entity @s ItemRotation set value 3b
scoreboard players operation #beam_x var = @s item_rotation
scoreboard players remove #beam_x var 5
scoreboard players operation #beam_x var *= #_1 var