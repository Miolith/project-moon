fill 328 76 128 322 76 134 minecraft:redstone_lamp[lit=false] replace minecraft:redstone_lamp
execute as @a at @s run playsound block.beacon.deactivate master @s
kill @e[type=area_effect_cloud,tag=laser_bis]
fill 329 70 136 327 70 136 redstone_lamp
scoreboard players set $laser_bis1 room5_vars 0
scoreboard players set $laser_bis2 room5_vars 0
scoreboard players set $laser_bis3 room5_vars 0