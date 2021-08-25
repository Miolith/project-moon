say deactivate 
execute if block ~ ~-1 ~ redstone_lamp run setblock ~ ~-1 ~ redstone_lamp[lit=false]
execute if block ~ ~-1 ~ observer run setblock ~ ~-1 ~ observer[powered=false]
tag @s remove activated