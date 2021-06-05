execute unless entity @e[type=armor_stand,tag=cursor] run summon armor_stand ^ ^-1 ^5 {Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor"],ArmorItems:[{},{},{},{id:"leather_boots",Count:1b,tag:{CustomModelData:3,display:{color:16777215}}}],ActiveEffects:[{ Id:24, Amplifier:0, ShowParticles:0b, Duration:16777215}]}

tp @e[type=armor_stand,tag=cursor,limit=1,sort=nearest] ^ ^-0.5 ^5

execute as @e[type=armor_stand,tag=cursor,limit=1,sort=nearest] at @s if block ~ ~0.5 ~ air run execute align xyz unless entity @e[tag=replaceable_block,dx=0,dz=0,dy=0] run data modify entity @s ArmorItems[3].tag.display.color set value 16777215
execute as @e[tag=cursor,limit=1,sort=nearest] at @s if block ~ ~0.5 ~ air run execute align xyz unless entity @e[tag=replaceable_block,dx=0,dz=0,dy=0] run team leave @s


execute as @e[type=armor_stand,tag=cursor,limit=1,sort=nearest] at @s unless block ~ ~0.5 ~ air run execute align xyz unless entity @e[tag=replaceable_block,dx=0,dz=0,dy=0] run data modify entity @s ArmorItems[3].tag.display.color set value 9699328
execute as @e[type=armor_stand,tag=cursor,distance=..7,limit=1,sort=nearest] at @s unless block ~ ~0.5 ~ air run execute align xyz unless entity @e[tag=replaceable_block,dx=0,dz=0,dy=0] run team join red @s


execute as @e[type=armor_stand,tag=cursor,limit=1,sort=nearest] at @s align xyz if entity @e[tag=replaceable_block,dx=0,dz=0,dy=0] run data modify entity @s ArmorItems[3].tag.display.color set value 4783872
execute as @e[type=armor_stand,tag=cursor,limit=1,sort=nearest] at @s align xyz if entity @e[tag=replaceable_block,dx=0,dz=0,dy=0] run team join green @s

execute store result score #1PosX var run data get entity @e[type=armor_stand,tag=cursor,limit=1,sort=nearest] Pos[0] 10000
execute store result score #1PosY var run data get entity @e[type=armor_stand,tag=cursor,limit=1,sort=nearest] Pos[1] 10000
execute store result score #1PosZ var run data get entity @e[type=armor_stand,tag=cursor,limit=1,sort=nearest] Pos[2] 10000

execute store result score #2PosX var run data get entity @e[type=turtle,tag=replaceable_block,tag=placing,limit=1,sort=nearest] Pos[0] 10000
execute store result score #2PosY var run data get entity @e[type=turtle,tag=replaceable_block,tag=placing,limit=1,sort=nearest] Pos[1] 10000
execute store result score #2PosZ var run data get entity @e[type=turtle,tag=replaceable_block,tag=placing,limit=1,sort=nearest] Pos[2] 10000

scoreboard players operation #1PosX var -= #2PosX var
scoreboard players operation #1PosY var -= #2PosY var
scoreboard players operation #1PosZ var -= #2PosZ var

execute store result entity @e[type=turtle,tag=replaceable_block,tag=placing,limit=1,sort=nearest] Motion[0] double 0.00007 run scoreboard players get #1PosX var
execute store result entity @e[type=turtle,tag=replaceable_block,tag=placing,limit=1,sort=nearest] Motion[1] double 0.00007 run scoreboard players get #1PosY var
execute store result entity @e[type=turtle,tag=replaceable_block,tag=placing,limit=1,sort=nearest] Motion[2] double 0.00007 run scoreboard players get #1PosZ var

execute if score @s gun_used matches 1.. at @e[tag=cursor,limit=1,sort=nearest] run execute unless entity @e[tag=replaceable_block,tag=placing] run execute if entity @e[type=turtle,tag=replaceable_block,limit=1,sort=nearest,distance=..1,tag=!placing] run function puzzle:modules/replace_used

execute if score @s gun_used matches 1.. at @e[tag=cursor,limit=1,sort=nearest] run execute if entity @e[type=turtle,tag=replaceable_block,tag=placing] run function puzzle:modules/replace_unused

execute if entity @e[type=turtle,tag=replaceable_block,tag=placing,distance=8..] run function puzzle:modules/replace_unused

scoreboard players set @s gun_used 0