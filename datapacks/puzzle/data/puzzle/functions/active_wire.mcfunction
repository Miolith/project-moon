execute if entity @s[type=item_frame] run execute store result entity @s Item{id:"minecraft:wooden_hoe"}.tag.CustomModelData int 2 run data get entity @s Item{id:"minecraft:wooden_hoe"}.tag.CustomModelData
execute if entity @s[type=item_frame] run tag @s add powered

execute as @e[type=item_frame,tag=!powered,limit=1,distance=..2,sort=nearest] at @s run function puzzle:active_wire