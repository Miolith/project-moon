scoreboard players add @s timer 1
execute if score @s timer matches 1 run playsound custom.fan2 master @a ~ ~ ~ 5
execute if score @s timer matches 20.. run scoreboard players set @s timer 0