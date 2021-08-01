scoreboard players add @s fan_rotation 20
execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @s fan_rotation
execute if score @s fan_rotation matches 340.. run scoreboard players set @s fan_rotation 0

execute align xyz positioned ~-8 ~ ~-1 run execute as @e[dx=8,dy=2,dz=2,type=!player] run data modify entity @s Motion set value [-1.5d,0.3d,0d]