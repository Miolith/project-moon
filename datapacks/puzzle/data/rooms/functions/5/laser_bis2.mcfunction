scoreboard players set $laser_bis2 room5_vars 1

tp @e[type=area_effect_cloud,tag=laser_bis] 322 73.5 128

# Laser 1
execute store success score #laser_temp3 var unless score #laser_temp2 var matches 1 if entity @e[type=turtle,x=323,y=73,z=128,dx=0] as @e[type=area_effect_cloud,tag=laser_bis] at @s run tp @s ~ ~ ~ -90 0
execute if score #laser_temp3 var matches 1 run setblock 322 76 128 minecraft:redstone_lamp[lit=true]
execute if score #laser_temp3 var matches 1 run playsound block.beacon.activate master @a 322 73 128
execute if score #laser_temp3 var matches 1 run schedule function rooms:5/laser_bis1 20t

# Laser 3
execute store success score #laser_temp4 var unless score #laser_temp2 var matches 1 unless score #laser_temp3 var matches 1 if entity @e[type=turtle,x=322,y=73,z=129,dx=0] as @e[type=area_effect_cloud,tag=laser_bis] at @s run tp @s ~ ~ ~ 0 0
execute if score #laser_temp4 var matches 1 run setblock 322 76 134 minecraft:redstone_lamp[lit=true]
execute if score #laser_temp4 var matches 1 run playsound block.beacon.activate master @a 322 73 129
execute if score #laser_temp4 var matches 1 run schedule function rooms:5/laser_bis3 20t



execute if entity @e[type=turtle,x=322.5,y=73,z=128.5,distance=..1.5] as @e[type=area_effect_cloud,tag=laser_bis] at @s run function rooms:5/laser_loop

execute if score #laser_temp1 var matches 0 if score #laser_temp2 var matches 0 if score #laser_temp3 var matches 0 if score #laser_temp4 var matches 0 run function rooms:5/laser_bis_reset

scoreboard players set #laser_temp1 var 0
scoreboard players set #laser_temp2 var 0
scoreboard players set #laser_temp3 var 0
scoreboard players set #laser_temp4 var 0