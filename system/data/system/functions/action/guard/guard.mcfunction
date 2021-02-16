execute if entity @s[scores={GuardTime=0}] run playsound minecraft:block.anvil.step player @s ~ ~ ~ 100 1
execute if entity @s[scores={GuardTime=0..5}] at @s run scoreboard players set @s Resist 0
execute if entity @s[scores={GuardTime=0..5}] at @s run scoreboard players set @s KnockbackResist 1000
execute if entity @s[scores={GuardTime=0..5}] at @s run tag @s add JustGuard
execute if entity @s[scores={GuardTime=6..}] store result storage layerofdimension:system var int 1.15 run scoreboard players get @s Defence
execute if entity @s[scores={GuardTime=6..}] store result score @s Defence run data get storage layerofdimension:system var
execute if entity @s[scores={GuardTime=0..}] store result storage layerofdimension:system var int 0.1 run scoreboard players get @s MovementSpeed
execute if entity @s[scores={GuardTime=0..}] store result score @s MovementSpeed run data get storage layerofdimension:system var
scoreboard players add @s GuardTime 1