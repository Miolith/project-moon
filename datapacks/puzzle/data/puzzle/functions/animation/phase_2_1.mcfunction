scoreboard players set @a gamestep 2
tp @e[tag=alicia1] @e[tag=alicia_animation4,limit=1]
data modify entity @e[tag=alicia1,limit=1] Pose set from entity @e[tag=alicia_animation4,limit=1] Pose
execute as @a at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 2