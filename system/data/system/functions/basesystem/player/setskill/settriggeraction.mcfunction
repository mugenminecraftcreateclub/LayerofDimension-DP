execute if entity @s[scores={SetTriggerAct=1}] run scoreboard players operation @s TriggerActionF = @s SetTriggerActID
execute if entity @s[scores={SetTriggerAct=2}] run scoreboard players operation @s TriggerActionFR = @s SetTriggerActID
execute if entity @s[scores={SetTriggerAct=3}] run scoreboard players operation @s TriggerActionR = @s SetTriggerActID
execute if entity @s[scores={SetTriggerAct=4}] run scoreboard players operation @s TriggerActionBR = @s SetTriggerActID
execute if entity @s[scores={SetTriggerAct=5}] run scoreboard players operation @s TriggerActionB = @s SetTriggerActID
execute if entity @s[scores={SetTriggerAct=6}] run scoreboard players operation @s TriggerActionBL = @s SetTriggerActID
execute if entity @s[scores={SetTriggerAct=7}] run scoreboard players operation @s TriggerActionL = @s SetTriggerActID
execute if entity @s[scores={SetTriggerAct=8}] run scoreboard players operation @s TriggerActionFL = @s SetTriggerActID
scoreboard players set @s SetTriggerAct 0
scoreboard players set @s SetTriggerActID 0
scoreboard players enable @s SetTriggerAct
scoreboard players enable @s SetTriggerActID