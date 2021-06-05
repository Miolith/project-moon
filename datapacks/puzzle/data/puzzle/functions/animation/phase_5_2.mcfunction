scoreboard players set #gamestep gamestep 6
scoreboard players set @a gamestep 6
scoreboard players set #animation_timer timer 0
data modify entity @e[tag=combination2,limit=1] ArmorItems set value [{},{},{},{}]
clear @a leather_chestplate{Damage:1}
replaceitem entity @a armor.chest leather_chestplate{display:{color: 16383998,Name:'"Plastron lunaire"'},Unbreakable:1b}
replaceitem entity @a armor.feet leather_boots{display:{color: 16383998, Name:'"Bottes lunaire"'},Unbreakable:1b}
replaceitem entity @a armor.legs leather_leggings{display:{color: 16383998}, Name:'"Bottes lunaire"',Unbreakable:1b}
replaceitem entity @a armor.head white_stained_glass
advancement grant @a only puzzle:custom/combination
replaceitem entity @a hotbar.0 carrot_on_a_stick{CustomModelData:1,Unbreakable:1b}