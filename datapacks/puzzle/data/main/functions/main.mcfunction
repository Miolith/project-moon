
execute as @a at @s run function puzzle:triggers

# Begining
execute if score #gamestep gamestep matches 0 run function phases:0

# Alicia first appearance 
execute if score #gamestep gamestep matches 1 run function phases:1

# Transition to Elevator cinematic
execute if score #gamestep gamestep matches 2 run function phases:2

# Elevator cinematic
execute if score #gamestep gamestep matches 3 run function phases:3

# Going through corridor, leading to fitting room
execute if score #gamestep gamestep matches 4 run function phases:4

# Fitting room
execute if score #gamestep gamestep matches 5 run function phases:5

# Open door and putting in suit cinematic
execute if score #gamestep gamestep matches 6 run function phases:6

# First steps into the main room
execute if score #gamestep gamestep matches 7 run function phases:7

# Opening the red circle door and access to teleporter
execute if score #gamestep gamestep matches 8 run function phases:8

# Teleportation into puzzle rooms
execute if score #gamestep gamestep matches 9 run function phases:9

# ROOM 1
execute if score #gamestep gamestep matches 10 run function phases:10

# ROOM 2
execute if score #gamestep gamestep matches 11 run function phases:11

# ROOM 3
execute if score #gamestep gamestep matches 12 run function phases:12

# ROOM 4
execute if score #gamestep gamestep matches 13 run function phases:13

# ROOM 5
execute if score #gamestep gamestep matches 14 run function phases:14

# ROOM 6
execute if score #gamestep gamestep matches 15 run function phases:15