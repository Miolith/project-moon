function puzzle:active_wire

execute if score #open_door1 var matches 0 run playsound custom.electric master @a 84 15 169 2
scoreboard players add #open_door1 var 1

scoreboard players set #pp_m_2 var 1