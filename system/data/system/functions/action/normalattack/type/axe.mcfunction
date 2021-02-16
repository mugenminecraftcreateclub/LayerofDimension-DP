execute at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.25 0.25 0.25 0.01 8 normal @a[distance=..10]
execute rotated as @a[tag=check,limit=1] run tp @s ^ ^ ^0.7
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..2.2,scores={HitTime=18..}] unless score @s team = @a[tag=check,limit=1] team run scoreboard players operation @s Damage = @e[type=minecraft:armor_stand,tag=normalattack,limit=1,sort=nearest] Attack
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..2.2,scores={HitTime=18..}] unless score @s team = @a[tag=check,limit=1] team run scoreboard players operation @s HitID = @a[tag=check,limit=1] ID
execute positioned ~ ~ ~ as @e[type=#system:mobs,distance=..2.2,scores={HitTime=18..}] unless score @s team = @a[tag=check,limit=1] team run function system:basesystem/damageprocessing
kill @s[scores={Time=5..}]