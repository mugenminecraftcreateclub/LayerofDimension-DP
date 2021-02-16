scoreboard players set @s varA 2
scoreboard players operation @s ActionSpeed += @s AttackSpeed
scoreboard players operation @s ActionSpeed += @s MovementSpeed
scoreboard players operation @s ActionSpeed /= @s varA
scoreboard players operation @s ActionTime += @s ActionSpeed
execute as @s[scores={ActionID=2147483647}] run function system:weapons/starlightbowact