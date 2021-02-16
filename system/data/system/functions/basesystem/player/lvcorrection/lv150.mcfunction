execute as @s run scoreboard players operation @s varD = @s CL
execute as @s run scoreboard players remove @s varD 149
execute as @s run scoreboard players set @s varB 7
execute as @s run scoreboard players operation @s varD *= @s varB
execute as @s run scoreboard players operation @s Attack += @s varD
execute as @s run scoreboard players operation @s Defence += @s varD
execute as @s run scoreboard players operation @s HPRegenerationV += @s varD
execute as @s run scoreboard players operation @s MPRegenerationV += @s varD
execute as @s run scoreboard players set @s varB 25
execute as @s run scoreboard players operation @s varD *= @s varB
execute as @s run scoreboard players operation @s MaxHP += @s varD
execute as @s run scoreboard players operation @s MaxMP += @s varD