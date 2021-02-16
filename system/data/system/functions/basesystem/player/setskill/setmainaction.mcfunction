execute if entity @s[scores={SetMainAction=1}] run scoreboard players operation @s MainActionF = @s SetMainActionID
execute if entity @s[scores={SetMainAction=2}] run scoreboard players operation @s MainActionFR = @s SetMainActionID
execute if entity @s[scores={SetMainAction=3}] run scoreboard players operation @s MainActionR = @s SetMainActionID
execute if entity @s[scores={SetMainAction=4}] run scoreboard players operation @s MainActionBR = @s SetMainActionID
execute if entity @s[scores={SetMainAction=5}] run scoreboard players operation @s MainActionB = @s SetMainActionID
execute if entity @s[scores={SetMainAction=6}] run scoreboard players operation @s MainActionBL = @s SetMainActionID
execute if entity @s[scores={SetMainAction=7}] run scoreboard players operation @s MainActionL = @s SetMainActionID
execute if entity @s[scores={SetMainAction=8}] run scoreboard players operation @s MainActionFL = @s SetMainActionID
scoreboard players set @s SetMainAction 0
scoreboard players set @s SetMainActionID 0
scoreboard players enable @s SetMainAction
scoreboard players enable @s SetMainActionID