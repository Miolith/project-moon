# Activate a whole line of wires
# To power a wire, multiply its CustomModelData by 2

execute if entity @s[type=item_frame] run execute store result entity @s Item{id:"minecraft:wooden_hoe"}.tag.CustomModelData int 2 run data get entity @s Item{id:"minecraft:wooden_hoe"}.tag.CustomModelData
tag @s[type=item_frame] add powered
execute if entity @s[type=item_frame] at @s if block ~ ~ ~ light run setblock ~ ~ ~ light[level=10]

execute as @e[type=item_frame,tag=!powered,limit=1,distance=..2,sort=nearest] at @s run function puzzle:active_wire