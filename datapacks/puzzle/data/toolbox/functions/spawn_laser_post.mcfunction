execute at @e[type=item_frame,sort=nearest,distance=..3,limit=1] run clone 11 4 18 13 7 20 ~-1 ~-1 ~-1 masked
execute at @e[type=item_frame,sort=nearest,distance=..3,limit=1] align y run summon marker ~ ~2.5 ~ {Tags:["laser_post"]}
kill @e[type=item_frame,sort=nearest,distance=..3,limit=1]