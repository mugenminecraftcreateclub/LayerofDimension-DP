execute at @s run particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 0.01 2 normal @a[distance=..10]
execute rotated as @a[tag=check,limit=1] run tp ^ ^ ^0.8
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..1.6,scores={HitTime=10..}] unless score @s team = @a[tag=check,limit=1] team run scoreboard players operation @s Damage = @e[type=minecraft:armor_stand,tag=normalattack,limit=1,sort=nearest] Attack
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..1.6,scores={HitTime=10..}] unless score @s team = @a[tag=check,limit=1] team run scoreboard players operation @s HitID = @a[tag=check,limit=1] ID
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..1.6,scores={HitTime=10..}] unless score @s team = @a[tag=check,limit=1] team run function system:basesystem/damageprocessing
kill @s[scores={Time=5..}]