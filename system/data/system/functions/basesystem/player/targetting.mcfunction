#tag @s add target
execute if score @s team = @a[tag=Watcher,limit=1] team run particle minecraft:dust 0.25 0.25 1.0 1 ~ ~2 ~ 0.1 0.1 0.1 1 5 normal @a[tag=Watcher,limit=1]
execute unless score @s team = @a[tag=Watcher,limit=1] team run particle minecraft:dust 1.0 0.25 0.25 1 ~ ~2 ~ 0.1 0.1 0.1 1 5 normal @a[tag=Watcher,limit=1]