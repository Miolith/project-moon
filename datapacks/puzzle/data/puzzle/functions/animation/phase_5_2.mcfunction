scoreboard players set #gamestep gamestep 6
scoreboard players set @a gamestep 6
scoreboard players set #animation_timer timer 0
data modify entity @e[tag=combination2,limit=1] ArmorItems set value [{},{},{},{}]
clear @a leather_chestplate{Damage:1}
item replace entity @a armor.chest with leather_chestplate{display: {color: 16383998, Name: '"Plastron lunaire"'}, Unbreakable: 1b}
item replace entity @a armor.feet with leather_boots{display: {color: 16383998, Name: '"Bottes lunaire"'}, Unbreakable: 1b}
item replace entity @a armor.legs with leather_leggings{display: {color: 16383998}, Name: '"Bottes lunaire"', Unbreakable: 1b}
item replace entity @a armor.head with white_stained_glass
advancement grant @a only puzzle:custom/combination
item replace entity @a hotbar.0 with carrot_on_a_stick{CustomModelData: 1, Unbreakable: 1b}