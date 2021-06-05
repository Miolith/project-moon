#First teleporter

scoreboard players add #animation_timer timer 1

execute if score #animation_timer timer matches 1 run summon armor_stand 118 23 159 {Rotation:[-90f],Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["temp_tp"]}
execute if score #animation_timer timer matches 1..160 run gamemode spectator @a
execute if score #animation_timer timer matches 1..160 as @a run spectate @e[type=armor_stand,tag=temp_tp,limit=1] @s

execute if score #animation_timer timer matches 2..60 as @e[type=armor_stand,tag=temp_tp,limit=1] at @s run tp @s ~ ~0.05 ~

execute if score #animation_timer timer matches 2..160 as @a at @s run particle cloud ~ ~1 ~ 0 0 0 0.5 10 force

execute if score #animation_timer timer matches 20 run title @a times 40 40 40
execute if score #animation_timer timer matches 20 run title @a title "\uE004"

execute if score #animation_timer timer matches 80 run tp @e[type=armor_stand,tag=temp_tp,limit=1] 143.5 29.0 158.5 90 0

execute if score #animation_timer timer matches 100..160 as @e[type=armor_stand,tag=temp_tp,limit=1] at @s run tp @s ~ ~-0.05 ~

execute if score #animation_timer timer matches 141 run title times reset
execute if score #animation_timer timer matches 141 run title @a title {"text":"Chapitre I","color": "gold"}
execute if score #animation_timer timer matches 141 run title @a subtitle {"text":"Cognitions","color": "gold"}

execute if score #animation_timer timer matches 160 run kill @e[type=armor_stand,tag=temp_tp,limit=1]
execute if score #animation_timer timer matches 160 run gamemode adventure @a

execute if entity @a[x=157,y=28,z=157,dx=0,dy=2,dz=2] if score #animation_timer timer matches 0.. run scoreboard players set #animation_timer timer -2000000010
execute if score #animation_timer timer matches -2000000010 run playsound minecraft:entity.generic.extinguish_fire master @a 159 28 157
execute if score #animation_timer timer matches -2000000000 run playsound minecraft:entity.generic.extinguish_fire master @a 159 28 157

execute if score #animation_timer timer matches -2000000010..-2000000000 positioned 159 28 157 align xyz run function puzzle:open_doors

execute if entity @a[x=161,y=28,z=157,dx=0,dy=2,dz=2] run scoreboard players set #animation_timer timer 0
execute if entity @a[x=161,y=28,z=157,dx=0,dy=2,dz=2] run scoreboard players set #gamestep gamestep 10