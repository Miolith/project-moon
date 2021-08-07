scoreboard players set $laser_bis1 room5_vars 1

playsound block.beacon.activate master @a
setblock 328 76 128 redstone_lamp[lit=true]
summon area_effect_cloud 328 73.5 128 {Tags:["laser_bis"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
schedule function rooms:5/laser_bis1 20t