setblock ~ ~ ~ observer[facing=down]
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["transmitter"]}
summon item_frame ~ ~1 ~ {Facing:1b,Invisible:1b,Tags:["x_angle"],Item:{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:strong_healing"}},ItemDropChance:0f}
summon item_frame ~ ~ ~1 {Facing:3b,Invisible:1b,Tags:["y_angle"],Item:{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:strong_healing"}},ItemDropChance:0f}
setblock ~-1 ~ ~ minecraft:crimson_button[facing=west,face=wall]