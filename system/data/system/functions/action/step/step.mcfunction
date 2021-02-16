scoreboard players add @s[scores={StepTrigger1=1..}] StepTime 1
scoreboard players add @s[scores={StepTime=1..,StepTrigger2=1..}] StepTime2 1
scoreboard players set @s[scores={StepTrigger2=0}] StepTime2 0
scoreboard players set @s varA 3
scoreboard players operation @s[scores={StepTime=1..,StepTime2=1..7}] MovementSpeed *= @s varA
execute as @s[scores={StepTime=1..,StepTime2=1..7}] at @s run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.45 5 normal @s
execute as @s[scores={StepTime=1..,StepTime2=1}] at @s run playsound minecraft:entity.rabbit.jump player @s ~ ~ ~ 100 0.5
execute as @s[scores={StepTime=1..,StepTime2=1}] at @s run playsound minecraft:entity.rabbit.jump player @s ~ ~ ~ 100 0.75
execute as @s[scores={StepTime=1..,StepTime2=1}] at @s run playsound minecraft:entity.rabbit.jump player @s ~ ~ ~ 100 0.25
execute as @s[scores={StepTime=1..,StepTime2=2..7}] at @s run tag @s add JustStep
execute as @s[scores={StepTime=1..,StepTime2=2..7}] at @s run scoreboard players set @s Resist 0
execute as @s[scores={StepTime=1..,StepTime2=1..7}] at @s run scoreboard players set @s KnockbackResist 1000

#ステップダッシュ
scoreboard players set @s[scores={StepTime2=8..,StepTrigger2=1..}] StepDashTrigger 1
execute if entity @s[scores={StepDashTrigger=1}] store result storage layerofdimension:system var int 2 run scoreboard players get @s MovementSpeed
execute if entity @s[scores={StepDashTrigger=1}] store result score @s MovementSpeed run data get storage layerofdimension:system var

#リセット
scoreboard players set @s[scores={StepTime2=8..}] StepTime 0
scoreboard players set @s[scores={StepTime2=8..}] StepTime2 0
scoreboard players set @s[scores={StepDashTrigger=1,StepTrigger2=0}] StepDashTrigger 0
scoreboard players set @s[scores={StepTrigger1=0,StepTrigger2=0}] StepTime 0
execute as @s[scores={StepTime=0}] at @s run tag @s remove JustStep
execute as @s[scores={StepTime=1..,StepTime2=1..7,OnSneak=1}] run scoreboard players set @s SlidingTrigger 1
scoreboard players set @s StepTrigger1 0
scoreboard players remove @s StepTrigger2 1
execute if entity @s[scores={StepTrigger2=1..}] run scoreboard players set @s StepTrigger2 1
execute if entity @s[scores={StepTrigger2=..0}] run scoreboard players set @s StepTrigger2 0


