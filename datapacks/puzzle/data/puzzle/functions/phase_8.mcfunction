scoreboard players add #animation_timer timer 1

execute if score #animation_timer timer matches 20 run fill 112 24 158 112 30 160 air
execute if score #animation_timer timer matches 20 run fill 112 29 157 112 25 161 air
execute if score #animation_timer timer matches 20 run fill 112 26 156 112 28 162 air

execute if score #animation_timer timer matches 1 run playsound entity.player.levelup master @a 112 27 159
execute if score #animation_timer timer matches 1 run summon firework_rocket 107 20 159 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;11743532]}]}}}}

execute if score #animation_timer timer matches 20..60 run playsound custom.elevator master @a 112 27 159 2.0 1 1
execute as @e[tag=door] at @s if score #animation_timer timer matches 20..60 run tp @s ~0.05 ~ ~

execute if score #animation_timer timer matches 60 run stopsound @a master custom.elevator


execute if score #animation_timer timer matches 80..160 run playsound custom.elevator master @a 112 27 159 2.0 1 1
execute as @e[tag=door1] at @s if score #animation_timer timer matches 80..160 run tp ~ ~ ~0.05
execute as @e[tag=door2] at @s if score #animation_timer timer matches 80..160 run tp ~ ~ ~-0.05
execute if score #animation_timer timer matches 160 run stopsound @a master custom.elevator

execute if entity @a[x=118,y=23,z=159,dx=0,dy=2,dz=0] run function puzzle:animation/phase_8_1