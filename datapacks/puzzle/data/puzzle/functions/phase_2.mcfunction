scoreboard players add #animation_timer timer 1

execute if score #animation_timer timer matches 1..1 run function puzzle:animation/phase_2_1
execute if score #animation_timer timer matches 2.. run function puzzle:animation/phase_2_2