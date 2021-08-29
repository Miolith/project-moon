execute at @e[type=turtle,tag=id_14587] run function toolbox:remove_block
function toolbox:spawn/block/laser_dir_north
tag @e[type=turtle,sort=nearest,limit=1] add id_14587
tp @e[type=turtle,tag=id_14587] ~ ~0.4 ~
playsound minecraft:block.piston.extend master @a ~ ~ ~ 2

scoreboard players set $miniroom3_block room5_vars 1