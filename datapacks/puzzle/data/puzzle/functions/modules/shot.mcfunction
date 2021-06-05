execute if score @s gun_used matches 1.. if score @s shot_cooldown matches 60 run function puzzle:modules/shot_used
scoreboard players add @s[scores={shot_cooldown=..59}] shot_cooldown 1
execute if score @s shot_cooldown matches ..59 run bossbar set minecraft:shot_cooldown players @s
execute if score @s shot_cooldown matches ..59 store result bossbar shot_cooldown value run scoreboard players get @s shot_cooldown
execute if score @s shot_cooldown matches 60 run bossbar set minecraft:shot_cooldown players