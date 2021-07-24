# Alicia comes and greet the player

title @a subtitle ["",{"translate":"space.-60"},{"text":"Alicia"}]
title @a title ["",{"translate":"space.-35"},{"text":"\uE000"}]
tp @e[tag=alicia1] @e[tag=alicia_animation1,limit=1]
data modify entity @e[tag=alicia1,limit=1] Pose set from entity @e[tag=alicia_animation1,limit=1] Pose
execute as @a at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 2
data modify entity @e[tag=alicia1,limit=1] CustomNameVisible set value 1b