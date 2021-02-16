scoreboard players set @s CL 1
scoreboard players set @s SkillPoint 2
scoreboard players set @s CharaPoint 3
scoreboard players set @s EXP 0
scoreboard players set @s PrevEXP 20
scoreboard players set @s NextEXP 20

scoreboard players set @s HP 20
scoreboard players set @s MaxHP 20
scoreboard players set @s MP 20
scoreboard players set @s MaxMP 20
scoreboard players set @s HPRegeneration 600
scoreboard players set @s HPRegenerationV 1
scoreboard players set @s MPRegeneration 600
scoreboard players set @s MPRegenerationV 1

scoreboard players set @s Saturation 100
scoreboard players set @s SaturationSubT 300
scoreboard players set @s SaturationSubV 1
scoreboard players set @s SaturationMax 100

scoreboard players set @s Attack 1
scoreboard players set @s Defence 1

#SpeedDefault=(100)*0.001=0.1
scoreboard players set @s MovementSpeed 100

scoreboard players set @s STR 0
scoreboard players set @s PER 0
scoreboard players set @s INT 0
scoreboard players set @s DEX 0
scoreboard players set @s VIT 0
scoreboard players set @s POW 0

scoreboard players set @s WarriorMastery 0
scoreboard players set @s RangerMastery 0
scoreboard players set @s MageMastery 0
scoreboard players set @s ClericMastery 0

scoreboard players set @s Hate 0
scoreboard players set @s HateTime 0

scoreboard players set @s MaxHPIaDT 0
scoreboard players set @s MaxMPIaDT 0
scoreboard players set @s AttackSpeedIaDT 0
scoreboard players set @s AttackIaDT 0
scoreboard players set @s DefenceIaDT 0
scoreboard players set @s ResistIaDT 0
scoreboard players set @s KnockBackIaDT 0
scoreboard players set @s MoveSpeedIaDT 0

scoreboard players set @s MaxHPIaD 0
scoreboard players set @s MaxMPIaD 0
scoreboard players set @s AttackSpeedIaD 0
scoreboard players set @s AttackIaD 0
scoreboard players set @s DefenceIaD 0
scoreboard players set @s ResistIaD 0
scoreboard players set @s KnockBackIaD 0
scoreboard players set @s MoveSpeedIaD 0

scoreboard players enable @s SetExAction
scoreboard players enable @s SetExActionID
scoreboard players enable @s SetMainAction
scoreboard players enable @s SetMainActionID
scoreboard players enable @s SetSubAction
scoreboard players enable @s SetSubActionID
scoreboard players enable @s SetTriggerAct
scoreboard players enable @s SetTriggerActID

advancement revoke @s everything
scoreboard players set @s[type=!player] team 99
scoreboard players set @s[type=villager] team 1
execute as @s[type=player] run scoreboard players operation @s team = @s ID
tag @s add finishsetup