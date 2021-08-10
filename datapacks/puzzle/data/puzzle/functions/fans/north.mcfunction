scoreboard players add @s fan_rotation 20
execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @s fan_rotation
execute if score @s fan_rotation matches 340.. run scoreboard players set @s fan_rotation 0

execute align xyz positioned ~-1 ~ ~1 run execute as @e[dx=2,dy=2,dz=-8,type=!player] run data modify entity @s Motion set value [0d,0.3d,-1.5d]


execute align xyz positioned ~-1 ~ ~1 if entity @a[dx=2,dy=2,dz=-8,tag=!faned_north] run execute at @a[dx=2,dy=2,dz=-8,tag=!faned_north] run summon armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,NoBasePlate:1b,Tags:["fan_north_motion"]}

execute as @e[type=armor_stand,tag=fan_north_motion,nbt={OnGround:0b}] run data modify entity @s Rotation set from entity @p Rotation

execute align xyz positioned ~-1 ~ ~1 run tag @a[dx=2,dy=2,dz=-8,tag=!faned_north] add faned_north

tp @a[tag=faned_north] @e[type=armor_stand,tag=fan_north_motion,nbt={OnGround:0b},limit=1,sort=nearest]

kill @e[type=armor_stand,tag=fan_north_motion,nbt={OnGround:1b}]

execute as @a[tag=faned_north] at @s unless entity @e[type=armor_stand,distance=..2,tag=fan_north_motion] run tag @s remove faned_north

particle dust 1 1 1 1 ~ ~1 ~ 0.5 0.5 -5 1 1 force