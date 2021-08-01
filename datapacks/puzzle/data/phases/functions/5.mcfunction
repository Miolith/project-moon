scoreboard players add #animation_timer timer 1

execute if score #animation_timer timer matches 1 run execute as @a at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 2
execute if score #animation_timer timer matches 1..60 run title @a actionbar ["",{"translate":"space.-80"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-128"},{"translate":"space.-195"},{"text":"Vous faites vraiment tout ce que je vous dis décidément..."}]

execute if score #animation_timer timer matches 60 run execute as @a at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 2
execute if score #animation_timer timer matches 60..120 run title @a actionbar ["",{"translate":"space.-100"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-128"},{"translate":"space.-120"},{"text":"Bref, je vous donne votre combinaison"},{"translate":"space.-190"},{"text":"enfilez-là et je vous ouvre la porte.","font": "newline"}]

execute if score #animation_timer timer matches 60 run function puzzle:animation/phase_5_1

execute if score #animation_timer timer matches 70..107 run execute as @e[tag=combination] at @s run tp @s ~ ~0.1 ~

execute if score #animation_timer timer matches 110.. run execute if entity @a[nbt={Inventory:[{id:"minecraft:leather_chestplate",Count:1b,tag:{Damage:1}}]}] run function puzzle:animation/phase_5_2