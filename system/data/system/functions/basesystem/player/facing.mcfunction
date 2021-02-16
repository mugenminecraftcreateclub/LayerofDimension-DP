scoreboard players set @s XFacing 0
scoreboard players set @s ZFacing 0
tag @e remove facing
tag @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] add facing
tag @s add facing
execute as @e[tag=facing,type=minecraft:armor_stand,limit=1,sort=nearest] store result score @s varA run data get entity @s Pos[0] 1000
execute as @e[tag=facing,type=minecraft:armor_stand,limit=1,sort=nearest] store result score @s varB run data get entity @s Pos[0] 1000
execute as @e[tag=facing,type=minecraft:armor_stand,limit=1,sort=nearest] run scoreboard players operation @s varB -= @p[tag=facing] PrevPosX
execute as @e[tag=facing,type=minecraft:armor_stand,limit=1,sort=nearest] run scoreboard players operation @s varA += @s varB
execute as @e[tag=facing,type=minecraft:armor_stand,limit=1,sort=nearest] store result entity @s Pos[0] double 0.001 run scoreboard players get @s varA
execute as @e[tag=facing,type=minecraft:armor_stand,limit=1,sort=nearest] store result score @s varA run data get entity @s Pos[2] 1000
execute as @e[tag=facing,type=minecraft:armor_stand,limit=1,sort=nearest] store result score @s varB run data get entity @s Pos[2] 1000
execute as @e[tag=facing,type=minecraft:armor_stand,limit=1,sort=nearest] run scoreboard players operation @s varB -= @p[tag=facing] PrevPosZ
execute as @e[tag=facing,type=minecraft:armor_stand,limit=1,sort=nearest] run scoreboard players operation @s varA += @s varB
execute as @e[tag=facing,type=minecraft:armor_stand,limit=1,sort=nearest] store result entity @s Pos[2] double 0.001 run scoreboard players get @s varA

execute as @s at @s anchored eyes rotated ~ 0 positioned ^10.00001 ^ ^ if entity @e[distance=..10,tag=facing] run scoreboard players set @s XFacing -1
execute as @s at @s anchored eyes rotated ~ 0 positioned ^-10.00001 ^ ^ if entity @e[distance=..10,tag=facing] run scoreboard players set @s XFacing 1
execute as @s at @s anchored eyes rotated ~ 0 positioned ^ ^ ^10.00001 if entity @e[distance=..10,tag=facing] run scoreboard players set @s ZFacing 1
execute as @s at @s anchored eyes rotated ~ 0 positioned ^ ^ ^-10.00001 if entity @e[distance=..10,tag=facing] run scoreboard players set @s ZFacing -1
execute as @e[tag=facing,type=minecraft:armor_stand] at @p[tag=facing] run tp ~ ~ ~
tag @e remove facing