execute if entity @s run scoreboard players remove @s MP 7
tag @s add check
particle minecraft:sweep_attack ^ ^ ^1.5 0.5 0.5 0.5 3 4 normal @a[distance=..10]
execute if entity @s store result storage layerofdimension:system var int 0.65 run scoreboard players get @s Attack
execute if entity @s store result score @s varA run data get storage layerofdimension:system var
execute positioned ^ ^ ^1.5 as @e[type=#system:mobs,distance=..3,scores={HitTime=4..}] unless score @s team = @a[tag=check,limit=1] team run tag @s add check_temporary
execute positioned ^-1 ^ ^1.5 as @e[type=#system:mobs,distance=..2,scores={HitTime=4..}] unless score @s team = @a[tag=check,limit=1] team run tag @s add check_temporary
execute positioned ^1 ^ ^1.5 as @e[type=#system:mobs,distance=..2,scores={HitTime=4..}] unless score @s team = @a[tag=check,limit=1] team run tag @s add check_temporary
execute as @e[type=#system:mobs,tag=check_temporary] run scoreboard players operation @s Damage += @e[type=minecraft:player,tag=check,limit=1,sort=nearest] varA
#execute as @e[type=#system:mobs,tag=check_temporary] unless score @s team = @a[tag=check,limit=1] team run scoreboard players set @s HitTime 0
execute as @e[type=#system:mobs,tag=check_temporary] unless score @s team = @a[tag=check,limit=1] team run function system:basesystem/damageprocessing
tag @e remove check_temporary
tag @s remove check