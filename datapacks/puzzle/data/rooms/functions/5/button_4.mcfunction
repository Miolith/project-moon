tag @s add spectate1
summon area_effect_cloud ~ ~ ~ {UUID:[I;-22165202,-108838715,-1770800517,-1964652310],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
tp feadc92e-f983-40c5-9673-ba7b8ae5c8ea @s
schedule function puzzle:rooms/room_5/button_4_2 30t
schedule function puzzle:rooms/room_5/button_4_3 60t
scoreboard players set #open_beam_2 var 1