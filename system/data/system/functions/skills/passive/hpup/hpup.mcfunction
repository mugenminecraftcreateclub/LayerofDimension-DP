scoreboard players set @s varA 5
scoreboard players operation @s varB = @s MaxHPUPSL
scoreboard players operation @s varA *= @s varB
scoreboard players operation @s MaxHP += @s varA
scoreboard players set @s varA 6
execute as @s[scores={varB=1..}] at @s run scoreboard players remove @s varB 5
execute as @s[scores={varB=1..}] at @s run scoreboard players operation @s varA *= @s varB
execute as @s[scores={varB=1..}] at @s run scoreboard players operation @s MaxHP += @s varA
scoreboard players set @s varA 7
execute as @s[scores={varB=1..}] at @s run scoreboard players remove @s varB 5
execute as @s[scores={varB=1..}] at @s run scoreboard players operation @s varA *= @s varB
execute as @s[scores={varB=1..}] at @s run scoreboard players operation @s MaxHP += @s varA
scoreboard players set @s varA 8
execute as @s[scores={varB=1..}] at @s run scoreboard players remove @s varB 5
execute as @s[scores={varB=1..}] at @s run scoreboard players operation @s varA *= @s varB
execute as @s[scores={varB=1..}] at @s run scoreboard players operation @s MaxHP += @s varA
scoreboard players set @s varA 9
execute as @s[scores={varB=1..}] at @s run scoreboard players remove @s varB 5
execute as @s[scores={varB=1..}] at @s run scoreboard players operation @s varA *= @s varB
execute as @s[scores={varB=1..}] at @s run scoreboard players operation @s MaxHP += @s varA