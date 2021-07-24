execute as @a at @s run function puzzle:test

# Begining
execute if score #gamestep gamestep matches 0 run function puzzle:phase_0

# Alicia first appearance 
execute if score #gamestep gamestep matches 1 run function puzzle:phase_1

# Transition to Elevator cinematic
execute if score #gamestep gamestep matches 2 run function puzzle:phase_2

# Elevator cinematic
execute if score #gamestep gamestep matches 3 run function puzzle:phase_3

# Going through corridor, leading to fitting room
execute if score #gamestep gamestep matches 4 run function puzzle:phase_4

# Fitting room
execute if score #gamestep gamestep matches 5 run function puzzle:phase_5

# Open door and putting in suit cinematic
execute if score #gamestep gamestep matches 6 run function puzzle:phase_6

# First steps into the main room
execute if score #gamestep gamestep matches 7 run function puzzle:phase_7

# Opening the red circle door and access to teleporter
execute if score #gamestep gamestep matches 8 run function puzzle:phase_8

# Teleportation into puzzle rooms
execute if score #gamestep gamestep matches 9 run function puzzle:phase_9

# ROOM 1
execute if score #gamestep gamestep matches 10 run function puzzle:phase_10

# ROOM 2
execute if score #gamestep gamestep matches 11 run function puzzle:phase_11

# ROOM 3
execute if score #gamestep gamestep matches 12 run function puzzle:phase_12

# ROOM 4
execute if score #gamestep gamestep matches 13 run function puzzle:phase_13

# ROOM 5
execute if score #gamestep gamestep matches 14 run function puzzle:phase_14