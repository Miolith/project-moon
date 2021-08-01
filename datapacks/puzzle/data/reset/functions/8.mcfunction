# Reset the opening door animation

data modify entity @e[tag=door1,limit=1] Pos set from storage minecraft:door1 Pos
data modify entity @e[tag=door2,limit=1] Pos set from storage minecraft:door2 Pos
scoreboard players set #animation_timer timer 0

fill 112 24 158 112 30 160 netherite_block
fill 112 29 157 112 25 161 netherite_block
fill 112 26 156 112 28 162 netherite_block