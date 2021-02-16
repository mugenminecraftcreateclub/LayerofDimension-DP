execute at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 4 normal @a[distance=..10]
execute rotated as @a[tag=check,limit=1] run tp @s ^ ^ ^1.4
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..1.2,scores={HitTime=17..}] unless score @s team = @a[tag=check,limit=1] team run scoreboard players operation @s Damage = @e[type=minecraft:armor_stand,tag=normalattack,limit=1,sort=nearest] Attack
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..1.2,scores={HitTime=17..}] unless score @s team = @a[tag=check,limit=1] team run scoreboard players operation @s HitID = @a[tag=check,limit=1] ID
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..1.2,scores={HitTime=17..}] unless score @s team = @a[tag=check,limit=1] team run function system:basesystem/damageprocessing
kill @s[scores={Time=5..}]