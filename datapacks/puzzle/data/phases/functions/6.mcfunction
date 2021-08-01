scoreboard players add #animation_timer timer 1

execute if score #animation_timer timer matches 60 run execute as @a at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 2
execute if score #animation_timer timer matches 60..120 run title @a actionbar ["",{"translate":"space.-140"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-128"},{"translate":"space.-45"},{"text":"Sésame ouvre-toi !"}]

execute if score #animation_timer timer matches 100 run execute as @a at @s run playsound minecraft:entity.generic.extinguish_fire master @s
execute if score #animation_timer timer matches 100 run clone 4 4 20 4 8 28 48 18 155
execute if score #animation_timer timer matches 120 run execute as @a at @s run playsound minecraft:entity.generic.extinguish_fire master @s
execute if score #animation_timer timer matches 120 run clone 6 4 20 6 8 28 48 18 155

execute if score #animation_timer timer matches 120 run execute as @a at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 2
execute if score #animation_timer timer matches 120..180 run title @a actionbar ["",{"translate":"space.-90"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-128"},{"translate":"space.-137"},{"text":"Héhé, j'ai toujours rêvé de dire ça un jour."}]

execute if score #animation_timer timer matches 120.. run execute as @a[x=50,y=17,z=155,dx=0,dy=5,dz=11] at @s run function puzzle:animation/phase_6_1