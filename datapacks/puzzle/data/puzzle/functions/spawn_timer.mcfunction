summon minecraft:area_effect_cloud ~ ~1 ~ {Age: -2147483648}
scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest] timer_id = #timer_id var
execute store result entity @e[type=area_effect_cloud,limit=1,sort=nearest] Age int -1 run scoreboard players get #timer_amount var
