# Summon a boat to keep a hitbox under block dispenser 

execute align xyz positioned ~0.5 ~-1.3 ~0.5 run summon boat ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Passengers:[{id:"area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648},{id:"area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648}]}