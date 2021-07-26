# Place a block dispenser

function puzzle:spawn_block
playsound minecraft:block.piston.extend master @a ~ ~ ~ 2
tp @e[type=turtle,tag=replaceable_block,limit=1,sort=nearest] ~ ~0.4 ~