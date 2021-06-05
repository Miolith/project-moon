scoreboard players set @s module 0
execute store result score @s module run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
advancement revoke @s only puzzle:custom/module