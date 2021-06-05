scoreboard players operation #beam_x var *= #45 var
scoreboard players operation #beam_y var *= #45 var

execute store result entity @s Rotation[0] float 1 run scoreboard players get #beam_y var
execute store result entity @s Rotation[1] float 1 run scoreboard players get #beam_x var

execute if score #beam_y var matches 0 if score #beam_x var matches 0 if score #beam_1 var matches 0 run function puzzle:rooms/room_5/beam_1
execute if score #open_beam_2 var matches 1 if score #beam_y var matches 3 if score #beam_x var matches 1 if score #beam_2 var matches 0 run function puzzle:rooms/room_5/beam_2

execute unless score #beam_y var matches 0 if score #beam_1 var matches 1 run function puzzle:rooms/room_5/beam_1_off
execute unless score #beam_x var matches 0 if score #beam_1 var matches 1 run function puzzle:rooms/room_5/beam_1_off

scoreboard players set #beam_duration timer 160
bossbar set beam_duration players @a

schedule function puzzle:rooms/room_5/crystal2 2t replace
schedule function puzzle:rooms/room_5/crystal_stop 8s replace