execute at @s run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 0.1 2 normal @a[distance=..10]
execute rotated as @a[tag=check,limit=1] run tp @s ^ ^ ^0.5
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..1.7,scores={HitTime=4..}] unless score @s team = @a[tag=check,limit=1] team run scoreboard players operation @s Damage = @e[type=minecraft:armor_stand,tag=normalattack,limit=1,sort=nearest] Attack
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..1.7,scores={HitTime=4..}] unless score @s team = @a[tag=check,limit=1] team run scoreboard players operation @s HitID = @a[tag=check,limit=1] ID
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..1.7,scores={HitTime=4..}] unless score @s team = @a[tag=check,limit=1] team run function system:basesystem/damageprocessing
kill @s[scores={Time=4..}]