scoreboard players add @s fan_rotation 20
execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @s fan_rotation
execute if score @s fan_rotation matches 340.. run scoreboard players set @s fan_rotation 0

execute align xyz positioned ~-8 ~ ~-1 run execute as @e[dx=8,dy=2,dz=2,type=!player] run data modify entity @s Motion set value [-1.5d,0.3d,0d]


execute align xyz positioned ~-8 ~ ~-1 if entity @a[dx=8,dy=2,dz=2,tag=!faned_west] run execute at @a[dx=8,dy=2,dz=2,tag=!faned_west] run summon armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,NoBasePlate:1b,Tags:["fan_west_motion"]}

execute as @e[type=armor_stand,tag=fan_west_motion,nbt={OnGround:0b}] run data modify entity @s Rotation set from entity @p Rotation

execute align xyz positioned ~-8 ~ ~-1 run tag @a[dx=8,dy=2,dz=2,tag=!faned_west] add faned_west

tp @a[tag=faned_west] @e[type=armor_stand,tag=fan_west_motion,nbt={OnGround:0b},limit=1,sort=nearest]

kill @e[type=armor_stand,tag=fan_west_motion,nbt={OnGround:1b}]

execute as @a[tag=faned_west] at @s unless entity @e[type=armor_stand,distance=..2,tag=fan_west_motion] run tag @s remove faned_west