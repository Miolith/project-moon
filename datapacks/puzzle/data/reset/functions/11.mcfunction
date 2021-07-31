# Reset room 2
scoreboard players set $button_2 room2_vars 0
execute as @e[tag=replaceable_block,x=197,y=16,z=133,dx=42,dy=32,dz=49] at @s run function puzzle:remove_block

scoreboard players set #block var 5
execute positioned 217 33 142 run function puzzle:spawn_block

scoreboard players set #block var 6
execute positioned 216 28 137 run function puzzle:spawn_block

scoreboard players set #block var 4
execute positioned 211 28 173 run function puzzle:spawn_block

fill 234 38 141 234 40 143 minecraft:brown_stained_glass

setblock 234 40 145 air