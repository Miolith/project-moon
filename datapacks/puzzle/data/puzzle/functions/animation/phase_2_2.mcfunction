title @a actionbar ["",{"translate":"space.-65"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-256"},{"translate":"space.-70"},{"translate":"space.-10"},{"text":"Très bien, rentrez dans l'ascenceur maintenant s'il vous plaît."}]
execute unless entity @a[predicate=puzzle:in_elevator] run scoreboard players set #gamestep gamestep 3
execute unless entity @a[predicate=puzzle:in_elevator] run scoreboard players set #animation_timer timer 0