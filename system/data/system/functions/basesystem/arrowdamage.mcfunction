scoreboard players set @s varA 0
scoreboard players set @s varB 0

execute as @s at @s store result score @s varC run data get entity @s HurtTime 1
execute if entity @s[scores={varC=10},type=!player] at @s positioned ~ ~1 ~ run tag @e[sort=nearest,type=minecraft:arrow,limit=1,distance=..2,tag=!DealtDamage] add DealtDamage
execute if entity @s[scores={varC=10},type=!player] at @s store result score @s varB run data get entity @e[tag=DealtDamage,sort=nearest,limit=1] damage 1
execute if entity @s[scores={varC=10},type=!player] at @s store result score @s HitID run scoreboard players get @e[tag=DealtDamage,sort=nearest,limit=1] ParentID

execute if entity @s[scores={varC=9},type=player] at @s positioned ~ ~1 ~ run tag @e[sort=nearest,type=minecraft:arrow,limit=1,distance=..2,tag=!DealtDamage] add DealtDamage
execute if entity @s[scores={varC=9},type=player] at @s store result score @s varB run data get entity @e[tag=DealtDamage,sort=nearest,limit=1] damage 1
execute if entity @s[scores={varC=9},type=player] at @s store result score @s HitID run scoreboard players get @e[tag=DealtDamage,sort=nearest,limit=1] ParentID

execute if entity @s[scores={varB=1..}] run scoreboard players operation @s Damage = @s varB
execute if entity @s[scores={varB=1..}] run scoreboard players set @s HitType 2
execute if entity @s[scores={varB=1..}] run function system:basesystem/damageprocessing
execute as @s at @s run kill @e[type=arrow,sort=nearest,limit=1,tag=DealtDamage]