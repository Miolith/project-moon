scoreboard players set #laser1 var 1

playsound block.beacon.activate master @a
setblock 357 73 161 minecraft:redstone_lamp[lit=true]
summon area_effect_cloud 357 70.5 161 {UUID:[I;-1532002618,-1211609496,-1451493934,-1518166364],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
schedule function rooms:5/laser1 20t