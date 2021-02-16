execute unless blocks ~-1.0 ~0.0 ~-0.0 ~-1.0 ~2 ~0.0 105000 1 105000 all if block ~ ~-1 ~ air run tag @s add walljump
execute unless blocks ~1.0 ~0.0 ~-0.0 ~1.0 ~2 ~0.0 105000 1 105000 all if block ~ ~-1 ~ air run tag @s add walljump
execute unless blocks ~-0.0 ~0.0 ~-1.0 ~-0.0 ~2 ~-1.0 105000 1 105000 all if block ~ ~-1 ~ air run tag @s add walljump
execute unless blocks ~-0.0 ~0.0 ~1.0 ~-0.0 ~2 ~1.0 105000 1 105000 all if block ~ ~-1 ~ air run tag @s add walljump
execute if entity @s[tag=walljump,tag=!walljump_1,scores={ZFacing=1}] unless blocks ^ ^ ^1 ^ ^3 ^1 105000 10 105000 all if blocks ^ ^4 ^1 ^ ^5 ^1 105000 10 105000 all run scoreboard players set @s VelY 25000
execute if entity @s[tag=walljump,tag=!walljump_1,scores={ZFacing=1}] unless blocks ^ ^ ^1 ^ ^3 ^1 105000 10 105000 all if blocks ^ ^4 ^1 ^ ^5 ^1 105000 10 105000 all run tag @s add walljump_1
execute if entity @s[tag=walljump,tag=!walljump_1,scores={ZFacing=1}] unless blocks ^ ^ ^1 ^ ^3 ^1 105000 10 105000 all if blocks ^ ^4 ^1 ^ ^5 ^1 105000 10 105000 all run tp @s @s
execute as @s[scores={CL=200..}] if block ~ ~-1 ~ air run tag @s add walljump
scoreboard players operation @s varA = @s MovementSpeed
execute as @s at @s if entity @s[tag=walljump,scores={OnSneak=1..}] run function system:basesystem/getfacingvelocity
execute as @s at @s if entity @s[tag=walljump,scores={OnSneak=1..}] run tp @s @s
scoreboard players set @s varB 10
execute as @s at @s if entity @s[tag=walljump,scores={OnSneak=1..}] run scoreboard players operation @s VelY /= @s varB
scoreboard players set @s varB 20
execute as @s at @s if entity @s[tag=walljump,scores={OnSneak=1..}] run scoreboard players operation @s VelX /= @s varB
execute as @s at @s if entity @s[tag=walljump,scores={OnSneak=1..}] run scoreboard players operation @s VelZ /= @s varB
execute as @s at @s if entity @s[tag=walljump,scores={OnSneak=1..}] run playsound minecraft:entity.player.small_fall player @s ~ ~ ~ 100 1.15
execute as @s[tag=walljump] run effect give @s slow_falling 1 0 true
execute as @s[tag=!walljump] run effect clear @s slow_falling 
execute as @s[tag=walljump] run scoreboard players set @s walljumpCT 0
execute unless block ~ ~-1 ~ air run tag @s remove walljump_1