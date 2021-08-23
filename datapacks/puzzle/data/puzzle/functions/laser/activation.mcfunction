# North
execute as @e[type=marker,tag=laser_post,tag=activation] positioned ~ ~-3 ~ if entity @e[type=turtle,distance=..0.5,tag=laser_dir_north] rotated 180 0 run function puzzle:laser/loop

# West
execute as @e[type=marker,tag=laser_post,tag=activation] positioned ~ ~-3 ~ if entity @e[type=turtle,distance=..0.5,tag=laser_dir_west] at @s rotated 90 0 run function puzzle:laser/loop

# South
execute as @e[type=marker,tag=laser_post,tag=activation] positioned ~ ~-3 ~ if entity @e[type=turtle,distance=..0.5,tag=laser_dir_south] at @s rotated 0 0 run function puzzle:laser/loop

# East
execute as @e[type=marker,tag=laser_post,tag=activation] positioned ~ ~-3 ~ if entity @e[type=turtle,distance=..0.5,tag=laser_dir_east] at @s rotated -90 0 run function puzzle:laser/loop

# Up
# .....

# Down
# .....