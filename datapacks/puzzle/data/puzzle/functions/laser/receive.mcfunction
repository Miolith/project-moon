tag @s add activated
playsound block.beacon.activate master @a
execute if block ~ ~-1 ~ observer run setblock ~ ~-1 ~ observer[powered=true]
execute if block ~ ~-1 ~ redstone_lamp run setblock ~ ~-1 ~ redstone_lamp[lit=true]
execute store result score @s laser_time run time query gametime
schedule function puzzle:laser/activation 20t append