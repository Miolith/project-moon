tp @a @s
scoreboard players set #gamestep gamestep 7
scoreboard players set @a gamestep 7
scoreboard players set #animation_timer timer 0
clone 8 4 20 8 8 28 48 18 155
execute as @a at @s run playsound minecraft:entity.generic.extinguish_fire master @s