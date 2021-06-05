setblock ~ ~-1 ~ redstone_block
setblock 351 67 134 minecraft:redstone_lamp[lit=true]
setblock 351 59 134 minecraft:redstone_lamp[lit=true]
execute positioned 366 60 139 run function puzzle:active_wire
scoreboard players set #crystal_on var 1
execute positioned as 24e9f9b1-aa6a-4694-ba40-454b40becd6e run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 4