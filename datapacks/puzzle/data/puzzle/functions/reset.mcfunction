# Resets everything before the puzzle rooms

scoreboard players reset * gamestep
scoreboard players set #gamestep gamestep 0
tp @e[tag=alicia1] @e[tag=alicia_animation0,limit=1]
scoreboard players set #animation_timer timer 0
data modify entity @e[tag=alicia1,limit=1] Pose set from entity @e[tag=alicia_animation0,limit=1] Pose
setblock 18 16 12 minecraft:warped_button[facing=west,face=wall]
data modify entity @e[tag=alicia1,limit=1] CustomNameVisible set value 0b
setblock 0 11 13 stone
clone -198 74 14 -198 79 16 -198 71 14 replace move
fill -199 73 14 -201 73 16 blue_terracotta
execute as @e[tag=cinematic1] at @s run tp @s -200 75 15 -90 ~
setblock 46 17 159 minecraft:cyan_terracotta
setblock 46 18 159 air
kill @e[tag=combination]
advancement revoke @a only puzzle:custom/combination