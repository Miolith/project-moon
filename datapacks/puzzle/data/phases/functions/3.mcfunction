scoreboard players add #animation_timer timer 1

execute if score #animation_timer timer matches 1..1 run function puzzle:animation/phase_3_1
execute if score #animation_timer timer matches 2..50 run title @a actionbar ["",{"translate":"space.-85"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-256"},{"translate":"space.-70"},{"text":"Vous en faites pas, je reste en communication avec vous."}]

execute if score #animation_timer timer matches 20 run clone -198 71 14 -198 76 16 -198 72 14 replace move
execute if score #animation_timer timer matches 20 run execute as @a at @s run playsound minecraft:entity.generic.extinguish_fire master @s
execute if score #animation_timer timer matches 40 run clone -198 72 14 -198 77 16 -198 73 14 replace move
execute if score #animation_timer timer matches 40 run execute as @a at @s run playsound minecraft:entity.generic.extinguish_fire master @s
execute if score #animation_timer timer matches 60 run clone -198 73 14 -198 78 16 -198 74 14 replace move
execute if score #animation_timer timer matches 60 run execute as @a at @s run playsound minecraft:entity.generic.extinguish_fire master @s

execute if score #animation_timer timer matches 50..100 run title @a actionbar ["",{"translate":"space.-80"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-256"},{"translate":"space.-15"},{"text":"Je vous donnerai plus de détails par la suite."}]
execute if score #animation_timer timer matches 50..50 run execute as @a at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 2

execute if score #animation_timer timer matches 100 run function puzzle:animation/phase_3_2
execute if score #animation_timer timer matches 100..1480 run function puzzle:animation/phase_3_3

execute if score #animation_timer timer matches 200 run title @a title {"text":"Une map réalisée par", "color":"yellow"}
execute if score #animation_timer timer matches 200 run title @a subtitle {"text":"Miolith", "color":"yellow"}

execute if score #animation_timer timer matches 350 run title @a title {"text":"Idée originale", "color":"yellow"}
execute if score #animation_timer timer matches 350 run title @a subtitle {"text":"Miolith", "color":"yellow"}

execute if score #animation_timer timer matches 500 run title @a title {"text":"Builders", "color":"yellow"}
execute if score #animation_timer timer matches 500 run title @a subtitle {"text":"Miolith & Gelios", "color":"yellow"}

execute if score #animation_timer timer matches 650 run title @a title {"text":"Command Blocks", "color":"yellow"}
execute if score #animation_timer timer matches 650 run title @a subtitle {"text":"Miolith", "color":"yellow"}

execute if score #animation_timer timer matches 800 run title @a title {"text":"Sound Director", "color":"yellow"}
execute if score #animation_timer timer matches 800 run title @a subtitle {"text":"Miolith", "color":"yellow"}

execute if score #animation_timer timer matches 1000..1000 run title @a title {"text":"Remerciements", "color":"yellow"}
execute if score #animation_timer timer matches 1000..1000 run title @a subtitle {"text":"Gelios, Amber", "color":"yellow"}

execute if score #animation_timer timer matches 1200..1200 run title @a title {"text":"To the M.O.O.N", "color":"yellow", "bold":true}

execute if score #animation_timer timer matches 1480..1480 run function puzzle:animation/phase_3_4