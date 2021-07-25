execute if entity @s[type=item_frame] run execute store result entity @s Item{id:"minecraft:wooden_hoe"}.tag.CustomModelData int 0.5 run data get entity @s Item{id:"minecraft:wooden_hoe"}.tag.CustomModelData
execute if entity @s[type=item_frame] run tag @s remove powered
execute if entity @s[type=item_frame] at @s if block ~ ~ ~ light run setblock ~ ~ ~ air

execute as @e[type=item_frame,tag=powered,limit=1,distance=..2,sort=nearest] at @s run function puzzle:deactivate_wire