# Alicia waits near the elevator

title @a actionbar ["",{"translate":"space.-70"},{"text":"\uE001\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE003\uF801\uE002"},{"translate":"space.-256"},{"translate":"space.-80"},{"translate":"space.-10"},{"text":"Je vous attends juste derrière, venez quand vous serez prêt."}]
execute positioned 1 15 10 if entity @p[dx=3,dy=2,dz=3] run scoreboard players set #gamestep gamestep 2
execute positioned 1 15 10 if entity @p[dx=3,dy=2,dz=3] run scoreboard players set #animation_timer timer 0