# ROOM 1

scoreboard players add #animation_timer timer 1

execute if score #animation_timer timer matches 1..11 positioned 159 28 157 align xyz run function puzzle:close_doors
execute if score #animation_timer timer matches 1 run playsound minecraft:entity.generic.extinguish_fire master @a 159 28 157
execute if score #animation_timer timer matches 11 run playsound minecraft:entity.generic.extinguish_fire master @a 159 28 157

execute if score #open_door2 var matches 2 run fill 187 28 157 187 30 159 air
execute if score #open_door2 var matches ..1 run fill 187 28 157 187 30 159 brown_stained_glass

execute if entity @a[x=198,y=28,z=157,dx=0,dy=2,dz=2] if score #animation_timer timer matches 0.. run scoreboard players set #animation_timer timer -2000000010

execute if score #animation_timer timer matches -2000000010 run playsound minecraft:entity.generic.extinguish_fire master @a 200 28 157
execute if score #animation_timer timer matches -2000000000 run playsound minecraft:entity.generic.extinguish_fire master @a 200 28 157

execute if score #animation_timer timer matches -2000000010..-2000000000 positioned 200 28 157 align xyz run function puzzle:open_doors

execute if entity @a[x=202,y=28,z=157,dx=0,dy=2,dz=2] run scoreboard players set #animation_timer timer 0
execute if entity @a[x=202,y=28,z=157,dx=0,dy=2,dz=2] run scoreboard players set #gamestep gamestep 11