scoreboard players add #animation_timer timer 1

execute if score #animation_timer timer matches 1..1 run function puzzle:animation/phase_4_1
execute if score #animation_timer timer matches 2..60 run title @a actionbar ["",{"translate":"space.-120"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-128"},{"translate":"space.-60"},{"text":"Pas mal la fusée hein ?"}]

execute if score #animation_timer timer matches 60 run execute as @a at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 2
execute if score #animation_timer timer matches 60..120 run title @a actionbar ["",{"translate":"space.-70"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-256"},{"translate":"space.-80"},{"text":"Avant de pouvoir y entrer il va falloir passer quelques tests."}]

execute if score #animation_timer timer matches 120 run execute as @a at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 2
execute if score #animation_timer timer matches 120..200 run title @a actionbar ["",{"translate":"space.-80"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-128"},{"translate":"space.-145"},{"text":"Ces tests évalueront votre ingéniosité et votre"},{"translate":"space.-242"},{"text":"éligibilité au projet M.O.O.N par la même occasion.","font": "newline"}]

execute if score #animation_timer timer matches 200 run execute as @a at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 2
execute if score #animation_timer timer matches 200.. run title @a actionbar ["",{"translate":"space.-80"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-128"},{"translate":"space.-140"},{"text":"Maintenant si vous voulez bien, placez vous"},{"translate":"space.-230"},{"text":"sur la plaque de pression dans la salle au fond.","font": "newline"}]

execute if score #animation_timer timer matches 260.. run execute if entity @a[x=-237,y=4,z=15,dx=0,dy=0,dz=0] run function puzzle:animation/phase_4_2