execute as @s run scoreboard players operation @s varC = @s CL
execute as @s run scoreboard players remove @s varC 49
execute as @s run scoreboard players set @s varB 2
execute as @s run scoreboard players operation @s varC *= @s varB
execute as @s run scoreboard players operation @s Attack += @s varC
execute as @s run scoreboard players operation @s Defence += @s varC
execute as @s run scoreboard players operation @s HPRegenerationV += @s varC
execute as @s run scoreboard players operation @s MPRegenerationV += @s varC
execute as @s run scoreboard players set @s varB 20
execute as @s run scoreboard players operation @s varC *= @s varB
execute as @s run scoreboard players operation @s MaxHP += @s varC
execute as @s run scoreboard players operation @s MaxMP += @s varC