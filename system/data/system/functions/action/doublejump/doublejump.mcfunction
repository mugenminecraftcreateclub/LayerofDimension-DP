playsound minecraft:entity.player.small_fall player @s ~ ~ ~ 100 1.15

tp @s @s
scoreboard players operation @s varA = @s MovementSpeed
scoreboard players set @s varB 1
execute as @s at @s run scoreboard players operation @s varA *= @s varB
execute as @s at @s run function system:basesystem/getfacingvelocity
scoreboard players set @s VelY 0
scoreboard players set @s varB 7
execute as @s at @s run scoreboard players operation @s VelX /= @s varB
execute as @s at @s run scoreboard players operation @s VelZ /= @s varB
scoreboard players add @s doublejumpT 1