scoreboard players remove @s MP 3
tag @s add check
execute as @e[distance=..1.5,type=#system:mobs] unless score @s team = @p[tag=check] team run scoreboard players operation @s Damage += @p[tag=check] STR
execute as @e[distance=..1.5,type=#system:mobs] unless score @s team = @p[tag=check] team run scoreboard players set @s KnockbackLv 1
execute as @e[distance=..1.5,type=#system:mobs] unless score @s team = @p[tag=check] team run function system:basesystem/crowdcontrol/knockback
tag @s remove check