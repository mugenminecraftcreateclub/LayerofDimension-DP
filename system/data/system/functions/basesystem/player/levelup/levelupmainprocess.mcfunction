scoreboard players add @s CL 1
scoreboard players add @s SkillPoint 1
scoreboard players add @s CharaPoint 3
scoreboard players operation @s EXP -= @s NextEXP

scoreboard players operation @s PrevEXP = @s NextEXP

scoreboard players set @s varA 20
scoreboard players operation @s varB = @s CL
scoreboard players operation @s varB *= @s CL
scoreboard players operation @s varB *= @s CL
scoreboard players operation @s varB += @s varA

scoreboard players set @s varA 2
scoreboard players operation @s varC = @s CL
scoreboard players operation @s varC *= @s CL
scoreboard players operation @s varC *= @s varA

scoreboard players operation @s varB -= @s varC

scoreboard players operation @s NextEXP = @s varB


tellraw @s "レベルアップしました"