# Spawn a new moveable block
# A moveable block is composed of  :
#   - Invisible Baby Turtle ( smallest hitbox in the game )
#   - an armor_stand to prevent the turtle rotation to rotate the wholeblock
#   - a second armor_stand that actually has the block model on its head
#   - and a shulker box to make the collision box of the block
#
# The block model depends on the scoreboard "#block var"

execute align xyz positioned ~0.5 ~ ~0.5 run summon turtle ~ ~ ~ {Attributes:[{Name:"generic.movement_speed",Base:0.0}], Age:-2147483648, PersistenceRequired:1b, Invulnerable:1b, Tags:["replaceable_block"], Silent:1b, ActiveEffects:[{Id:14b, Amplifier:0, Duration:2147483647,ShowParticles:0b}], Passengers:[{id:"armor_stand",Tags:["AS_replaceable_block2"],Small:1b,Marker:1b,Invisible:1b,Passengers:[{id:"armor_stand",Tags:["AS_replaceable_block"], Marker:1b, Invisible:1b, ArmorItems:[{},{},{},{id:"iron_hoe",Count:1b,tag:{CustomModelData:3}}], Passengers:[{id:"shulker", Tags:["SB_replaceable_block"], Color:0b, NoAI:1b, PersistenceRequired:1b, Silent:1b, Invulnerable:1b, ActiveEffects:[{Id:14b,ShowParticles:0b, Duration:2147483647, Amplifier:0}]}]}]}]}

execute store result entity @e[type=armor_stand,limit=1,sort=nearest,tag=AS_replaceable_block] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #block var

scoreboard players operation @e[tag=replaceable_block,limit=1,sort=nearest] block = #block var