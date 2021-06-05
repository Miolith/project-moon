execute align xyz as @a[dx=0,dy=2,dz=0] run gamemode creative @s
execute align xyz as @a[dx=0,dy=2,dz=0] at @s run summon creeper ~ ~-0.5 ~ {Fuse:-1,ExplosionRadius:-2}
execute align xyz as @a[dx=0,dy=2,dz=0] run schedule function puzzle:explosion2 2t
execute align xyz unless entity @a[dx=0,dy=2,dz=0] run summon creeper ~0.5 ~ ~0.5 {Fuse:-1,ExplosionRadius:-2}
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force