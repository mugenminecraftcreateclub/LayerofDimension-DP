execute if score @s IncandDecT matches 1.. unless score @s MaxHPIaD matches 0 run scoreboard players operation @s MaxHPIaDT += @s IncandDecT
execute if score @s IncandDecT matches 1.. unless score @s MaxMPIaD matches 0 run scoreboard players operation @s MaxMPIaDT += @s IncandDecT
execute if score @s IncandDecT matches 1.. unless score @s AttackSpeedIaD matches 0 run scoreboard players operation @s AttackSpeedIaDT += @s IncandDecT
execute if score @s IncandDecT matches 1.. unless score @s AttackIaD matches 0 run scoreboard players operation @s AttackIaDT += @s IncandDecT
execute if score @s IncandDecT matches 1.. unless score @s DefenceIaD matches 0 run scoreboard players operation @s DefenceIaDT += @s IncandDecT
execute if score @s IncandDecT matches 1.. unless score @s ResistIaD matches 0 run scoreboard players operation @s ResistIaDT += @s IncandDecT
execute if score @s IncandDecT matches 1.. unless score @s KnockbackIaD matches 0 run scoreboard players operation @s KnockbackIaDT += @s IncandDecT
execute if score @s IncandDecT matches 1.. unless score @s MoveSpeedIaD matches 0 run scoreboard players operation @s MoveSpeedIaDT += @s IncandDecT

execute if score @s MaxHPIaDT matches 1.. unless score @s MaxHPIaD matches 0 run scoreboard players remove @s MaxHPIaDT 1
execute if score @s MaxMPIaDT matches 1.. unless score @s MaxMPIaD matches 0 run scoreboard players remove @s MaxMPIaDT 1
execute if score @s AttackSpeedIaDT matches 1.. unless score @s AttackSpeedIaD matches 0 run scoreboard players remove @s AttackSpeedIaDT 1
execute if score @s AttackIaDT matches 1.. unless score @s AttackIaD matches 0 run scoreboard players remove @s AttackIaDT 1
execute if score @s DefenceIaDT matches 1.. unless score @s DefenceIaD matches 0 run scoreboard players remove @s DefenceIaDT 1
execute if score @s ResistIaDT matches 1.. unless score @s ResistIaD matches 0 run scoreboard players remove @s ResistIaDT 1
execute if score @s KnockbackIaDT matches 1.. unless score @s KnockbackIaD matches 0 run scoreboard players remove @s KnockbackIaDT 1
execute if score @s MoveSpeedIaDT matches 1.. unless score @s MoveSpeedIaD matches 0 run scoreboard players remove @s MoveSpeedIaDT 1

execute if score @s MaxHPIaDT matches ..0 unless score @s MaxHPIaD matches 0 run scoreboard players set @s MaxHPIaD 0
execute if score @s MaxMPIaDT matches ..0 unless score @s MaxMPIaD matches 0 run scoreboard players set @s MaxMPIaD 0
execute if score @s AttackSpeedIaDT matches ..0 unless score @s AttackSpeedIaD matches 0 run scoreboard players set @s AttackSpeedIaD 0
execute if score @s AttackIaDT matches ..0 unless score @s AttackIaD matches 0 run scoreboard players set @s AttackIaD 0
execute if score @s DefenceIaDT matches ..0 unless score @s DefenceIaD matches 0 run scoreboard players set @s DefenceIaD 0
execute if score @s ResistIaDT matches ..0 unless score @s ResistIaD matches 0 run scoreboard players set @s ResistIaD 0
execute if score @s KnockbackIaDT matches ..0 unless score @s KnockbackIaD matches 0 run scoreboard players set @s KnockbackIaD 0
execute if score @s MoveSpeedIaDT matches ..0 unless score @s MoveSpeedIaD matches 0 run scoreboard players set @s MoveSpeedIaD 0

execute if score @s MaxHPIaDT matches 1.. unless score @s MaxHPIaD matches 0 run scoreboard players operation @s MaxHP += @s MaxHPIaD
execute if score @s MaxMPIaDT matches 1.. unless score @s MaxMPIaD matches 0 run scoreboard players operation @s MaxMP += @s MaxMPIaD
execute if score @s AttackSpeedIaDT matches 1.. unless score @s AttackSpeedIaD matches 0 run scoreboard players operation @s AttackSpeed += @s AttackSpeedIaD
execute if score @s AttackIaDT matches 1.. unless score @s AttackIaD matches 0 run scoreboard players operation @s Attack += @s AttackIaD
execute if score @s DefenceIaDT matches 1.. unless score @s DefenceIaD matches 0 run scoreboard players operation @s Defence += @s DefenceIaD
execute if score @s ResistIaDT matches 1.. unless score @s ResistIaD matches 0 run scoreboard players operation @s Resist += @s ResistIaD
execute if score @s KnockbackIaDT matches 1.. unless score @s KnockbackIaD matches 0 run scoreboard players operation @s KnockbackResist += @s KnockbackIaD
execute if score @s MoveSpeedIaDT matches 1.. unless score @s MoveSpeedIaD matches 0 run scoreboard players operation @s MovementSpeed += @s MoveSpeedIaD

execute if entity @s[scores={AttackIaDT=..0}] run function system:basesystem/player/buff_debuff_reset/attack
execute if entity @s[scores={DefenceIaDT=..0}] run function system:basesystem/player/buff_debuff_reset/defence