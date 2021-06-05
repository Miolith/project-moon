#ROOM 2

scoreboard players add #animation_timer timer 1

#closing door animation

execute if score #animation_timer timer matches 1..11 positioned 200 28 157 align xyz run function puzzle:close_doors
execute if score #animation_timer timer matches 1 run playsound minecraft:entity.generic.extinguish_fire master @a 200 28 157
execute if score #animation_timer timer matches 11 run playsound minecraft:entity.generic.extinguish_fire master @a 200 28 157

#============================================================================

effect clear @a levitation

execute as 15d36c4c-9de3-40de-8526-cce136bdd538 at @s if entity @s[tag=on] run function puzzle:fans/fan_up
execute as 15d36c4c-9de3-40de-8526-cce136bdd538 at @s if entity @s[tag=on] run function puzzle:sounds/fan1
execute as 15d36c4c-9de3-40de-8526-cce136bdd538 at @s if entity @s[tag=!on] run stopsound @a master custom.fan1
execute as 15d36c4c-9de3-40de-8526-cce136bdd538 if entity @s[tag=!on] run scoreboard players set @s timer 0

execute as d8b4600d-e6f2-4fa1-b379-267da2929e78 at @s if entity @s[tag=on] run function puzzle:fans/fan_up
execute as d8b4600d-e6f2-4fa1-b379-267da2929e78 at @s if entity @s[tag=on] run function puzzle:sounds/fan2
execute as d8b4600d-e6f2-4fa1-b379-267da2929e78 at @s if entity @s[tag=!on] run stopsound @a master custom.fan2
execute as d8b4600d-e6f2-4fa1-b379-267da2929e78 if entity @s[tag=!on] run scoreboard players set @s timer 0

execute as 870cc264-8d36-4e30-8770-b6605b9ee5e9 at @s if entity @s[tag=on] run function puzzle:fans/fan_up
execute as 870cc264-8d36-4e30-8770-b6605b9ee5e9 at @s if entity @s[tag=on] run function puzzle:sounds/fan3
execute as 870cc264-8d36-4e30-8770-b6605b9ee5e9 at @s if entity @s[tag=!on] run stopsound @a master custom.fan3
execute as 870cc264-8d36-4e30-8770-b6605b9ee5e9 if entity @s[tag=!on] run scoreboard players set @s timer 0

execute as 6de600f9-1979-4289-97ec-cf100cc1caab at @s if entity @s[tag=on] run function puzzle:fans/fan_west
execute as 6de600f9-1979-4289-97ec-cf100cc1caab at @s if entity @s[tag=on] run function puzzle:sounds/fan4
execute as 6de600f9-1979-4289-97ec-cf100cc1caab at @s if entity @s[tag=!on] run stopsound @a master custom.fan4
execute as 6de600f9-1979-4289-97ec-cf100cc1caab if entity @s[tag=!on] run scoreboard players set @s timer 0

execute as 9f7c98f9-3de2-4402-9c79-ae5c0dde48ea at @s if entity @s[tag=on] run function puzzle:fans/fan_east

execute as @e[type=area_effect_cloud,scores={timer_id=1}] run function puzzle:timer

execute unless entity @e[type=area_effect_cloud,scores={timer_id=1}] run tag @e[tag=fan,x=201,y=27,z=173,dx=0,dy=0,dz=0,tag=on] remove on
execute unless entity @e[type=area_effect_cloud,scores={timer_id=1}] run tag @e[tag=fan,x=200,y=39,z=173,dx=0,dy=0,dz=0,tag=on] remove on

#============================================================================

#open door animation when player is at 244 38 141

execute if entity @a[x=244,y=38,z=141,dx=0,dy=2,dz=2] if score #animation_timer timer matches 0.. run scoreboard players set #animation_timer timer -2000000010

execute if score #animation_timer timer matches -2000000010 run playsound minecraft:entity.generic.extinguish_fire master @a 246 38 141
execute if score #animation_timer timer matches -2000000000 run playsound minecraft:entity.generic.extinguish_fire master @a 246 38 141

execute if score #animation_timer timer matches -2000000010..-2000000000 positioned 246 38 141 align xyz run function puzzle:open_doors

execute if entity @a[x=248,y=38,z=141,dx=0,dy=2,dz=2] run scoreboard players set #animation_timer timer 0
execute if entity @a[x=248,y=38,z=141,dx=0,dy=2,dz=2] run scoreboard players set #gamestep gamestep 12