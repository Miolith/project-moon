execute store result score @s ticks run data get entity @s Age -1
scoreboard players operation @s ticks %= #20 var
execute if score @s ticks matches 0 run execute as @a at @s run playsound ui.button.click master @s