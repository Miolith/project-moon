scoreboard players set @s shot_range 60
scoreboard players set @s shot_cooldown 0
playsound custom.laser master @a
execute anchored eyes positioned ^-0.2 ^-0.1 ^0.3 facing ^ ^ ^50 run function puzzle:modules/shot_used_loop
scoreboard players set @s shot_range 0