scoreboard players add #animation_timer timer 1

execute if score #animation_timer timer matches 1..1 run function puzzle:animation/phase_1_1

execute if score #animation_timer timer matches 60..60 run function puzzle:animation/phase_1_2
execute if score #animation_timer timer matches 60..140 run title @a actionbar ["",{"translate":"space.-110"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-128"},{"translate":"space.-80"},{"text":"Enchantée, je me nomme Alicia."}]

execute if score #animation_timer timer matches 140..140 run execute as @a at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 2
execute if score #animation_timer timer matches 140..220 run title @a actionbar ["",{"translate":"space.-90"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-256"},{"translate":"space.-70"},{"text":"J'accompagne les candidats aux tests du projet M.O.O.N."}]

execute if score #animation_timer timer matches 220..220 run function puzzle:animation/phase_1_3
execute if score #animation_timer timer matches 220..300 run title @a actionbar ["",{"translate":"space.-70"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-256"},{"translate":"space.-24"},{"text":"Lisez les instructions sur l'écran puis suivez-moi."}]

execute if score #animation_timer timer matches 300..300 run function puzzle:animation/phase_1_4
execute if score #animation_timer timer matches 300.. run function puzzle:animation/phase_1_5