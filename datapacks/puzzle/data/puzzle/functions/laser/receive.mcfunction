say receive
tag @s add activated
playsound block.beacon.activate master @a
execute if block ~ ~-1 ~ observer run setblock ~ ~-1 ~ observer[powered=true]
execute if block ~ ~-1 ~ redstone_lamp run setblock ~ ~-1 ~ redstone_lamp[lit=true]
schedule function puzzle:laser/activation 20t append