scoreboard players add @s timer 1

execute at @s if score @s timer matches 1 run function puzzle:tp_pad/tp_pad_animation1

execute at @s if score @s timer matches 6 positioned ~ ~1 ~ run function puzzle:tp_pad/tp_pad_animation1

execute at @s if score @s timer matches 11 positioned ~ ~2 ~ run function puzzle:tp_pad/tp_pad_animation1

execute at @s if score @s timer matches 20.. run scoreboard players set @s timer 0