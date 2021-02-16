scoreboard players set @s varA -2
scoreboard players operation @s varA *= @s KnockbackLv
execute as @s at @s run function system:basesystem/getfacingvelocity
scoreboard players set @s KnockbackLv 0