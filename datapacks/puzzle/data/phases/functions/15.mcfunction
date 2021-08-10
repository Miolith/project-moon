
effect clear @e[x=398,y=57,z=120,dx=17,dy=20,dz=28] levitation

execute as cc94c9b6-5196-401d-8e0b-fcb6051af789 at @s if entity @s[tag=on] run function puzzle:fans/fan_up
execute as cc94c9b6-5196-401d-8e0b-fcb6051af789 at @s if entity @s[tag=on] run function puzzle:sounds/fan1
execute as cc94c9b6-5196-401d-8e0b-fcb6051af789 at @s if entity @s[tag=!on] run stopsound @a master custom.fan1
execute as cc94c9b6-5196-401d-8e0b-fcb6051af789 if entity @s[tag=!on] run scoreboard players set @s timer 0

execute as 6d57e2e2-1498-4608-b098-b965581d61bc at @s if entity @s[tag=on] run function puzzle:fans/fan_south
execute as 6d57e2e2-1498-4608-b098-b965581d61bc at @s if entity @s[tag=on] run function puzzle:sounds/fan2
execute as 6d57e2e2-1498-4608-b098-b965581d61bc at @s if entity @s[tag=!on] run stopsound @a master custom.fan2
execute as 6d57e2e2-1498-4608-b098-b965581d61bc if entity @s[tag=!on] run scoreboard players set @s timer 0

execute as a1c1ff56-9197-4901-bd3e-865992481074 at @s if entity @s[tag=on] run function puzzle:fans/fan_up
execute as a1c1ff56-9197-4901-bd3e-865992481074 at @s if entity @s[tag=on] run function puzzle:sounds/fan3
execute as a1c1ff56-9197-4901-bd3e-865992481074 at @s if entity @s[tag=!on] run stopsound @a master custom.fan3
execute as a1c1ff56-9197-4901-bd3e-865992481074 if entity @s[tag=!on] run scoreboard players set @s timer 0

execute as 4f1afaf4-a937-481a-a596-58349008ff89 at @s if entity @s[tag=on] run function puzzle:fans/north
execute as 4f1afaf4-a937-481a-a596-58349008ff89 at @s if entity @s[tag=on] run function puzzle:sounds/fan4
execute as 4f1afaf4-a937-481a-a596-58349008ff89 at @s if entity @s[tag=!on] run stopsound @a master custom.fan4
execute as 4f1afaf4-a937-481a-a596-58349008ff89 if entity @s[tag=!on] run scoreboard players set @s timer 0