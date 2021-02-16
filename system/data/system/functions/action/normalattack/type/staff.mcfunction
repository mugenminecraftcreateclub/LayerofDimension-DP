execute at @s run particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.01 2 normal @a[distance=..50]
execute if entity @s[scores={Time=..10}] rotated as @a[tag=check,limit=1] run tp ^ ^ ^1.5
execute if entity @s[scores={Time=11..}] run tp ^ ^ ^2.0
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..1.0,scores={HitTime=30..}] unless score @s team = @a[tag=check,limit=1] team run scoreboard players operation @s Damage = @e[type=minecraft:armor_stand,tag=normalattack,limit=1,sort=nearest] Attack
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..1.0,scores={HitTime=30..}] unless score @s team = @a[tag=check,limit=1] team run scoreboard players operation @s HitID = @a[tag=check,limit=1] ID
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..1.0,scores={HitTime=30..}] unless score @s team = @a[tag=check,limit=1] team run function system:basesystem/damageprocessing
kill @s[scores={Time=20..}]