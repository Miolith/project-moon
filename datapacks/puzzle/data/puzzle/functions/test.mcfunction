execute as @s[tag=player,nbt={ SelectedItem:{ id:"minecraft:carrot_on_a_stick",Count:1b}},gamemode=!spectator] anchored eyes run function puzzle:gun
execute as @s[tag=player,nbt=!{ SelectedItem:{ id:"minecraft:carrot_on_a_stick",Count:1b}}] anchored eyes run function puzzle:stop_gun
execute as @s[tag=player,gamemode=spectator] anchored eyes run function puzzle:stop_gun
effect give @s saturation 999999 30 true

scoreboard players set @s gun_used 0