execute as @s at @s store result score @s PrevPosX run data get entity @s Pos[0] 10000
execute as @s at @s store result score @s PrevPosY run data get entity @s Pos[1] 10000
execute as @s at @s store result score @s PrevPosZ run data get entity @s Pos[2] 10000
execute as @s at @s run tp @s ^ ^ ^0.1
execute as @s at @s store result score @s varB run data get entity @s Pos[0] 10000
execute as @s at @s store result score @s varC run data get entity @s Pos[1] 10000
execute as @s at @s store result score @s varD run data get entity @s Pos[2] 10000
execute as @s run tp @s ~ ~ ~
execute store result score @s VelX run scoreboard players operation @s varB -= @s PrevPosX
execute store result score @s VelY run scoreboard players operation @s varC -= @s PrevPosY
execute store result score @s VelZ run scoreboard players operation @s varD -= @s PrevPosZ
scoreboard players operation @s VelX *= @s varA
scoreboard players operation @s VelY *= @s varA
scoreboard players operation @s VelZ *= @s varA