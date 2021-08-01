execute store result score @s item_rotation run data get entity @s ItemRotation
scoreboard players operation #beam_y var = @s item_rotation
scoreboard players remove #beam_y var 3
scoreboard players operation #beam_y var %= #8 var