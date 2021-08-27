
execute store result score #gametime var run time query gametime
scoreboard players operation #gametime var -= #20 var

# None -> Reset
execute as @e[type=marker,tag=laser_post,tag=activated] if score @s laser_time = #gametime var at @s positioned ~ ~-3 ~ align xyz unless entity @e[type=turtle,dx=0,tag=laser_dir_west] unless entity @e[type=turtle,dx=0,tag=laser_dir_north] unless entity @e[type=turtle,dx=0,tag=laser_dir_south] unless entity @e[type=turtle,dx=0,tag=laser_dir_east] at @s run function puzzle:laser/deactivate

# North
execute as @e[type=marker,tag=laser_post,tag=activated] if score @s laser_time = #gametime var at @s positioned ~ ~-3 ~ align xyz if entity @e[type=turtle,dx=0,tag=laser_dir_north] at @s rotated 180 0 run function puzzle:laser/shoot

# West
execute as @e[type=marker,tag=laser_post,tag=activated] if score @s laser_time = #gametime var at @s positioned ~ ~-3 ~ align xyz if entity @e[type=turtle,dx=0,tag=laser_dir_west] at @s rotated 90 0 run function puzzle:laser/shoot

# South
execute as @e[type=marker,tag=laser_post,tag=activated] if score @s laser_time = #gametime var at @s positioned ~ ~-3 ~ align xyz if entity @e[type=turtle,dx=0,tag=laser_dir_south] at @s rotated 0 0 run function puzzle:laser/shoot

# East
execute as @e[type=marker,tag=laser_post,tag=activated] if score @s laser_time = #gametime var at @s positioned ~ ~-3 ~ align xyz if entity @e[type=turtle,dx=0,tag=laser_dir_east] at @s rotated -90 0 run function puzzle:laser/shoot

# Up
# .....

# Down
# .....
