#ステータス初期化
execute as @s at @s run function system:basesystem/mob/tickfirstmobsetup

#VelをMotionに変換
execute unless entity @s[scores={VelX=0}] store result entity @s Motion[0] double 0.00005 run scoreboard players get @s VelX
execute unless entity @s[scores={VelX=0}] run scoreboard players set @s VelX 0
execute unless entity @s[scores={VelY=0}] store result entity @s Motion[1] double 0.00005 run scoreboard players get @s VelY
execute unless entity @s[scores={VelY=0}] run scoreboard players set @s VelY 0
execute unless entity @s[scores={VelZ=0}] store result entity @s Motion[2] double 0.00005 run scoreboard players get @s VelZ
execute unless entity @s[scores={VelZ=0}] run scoreboard players set @s VelZ 0

#ダメージ計算
execute as @s at @s run function system:basesystem/arrowdamage

#scoreboard players set @s varD 0
#execute as @e[nbt={HurtTime:10s}] at @s run scoreboard players add @e[scores={varC=10},limit=1,sort=nearest] varD 1
#scoreboard players operation @s varA /= @s varD

#scoreboard players operation @s Damage += @s varA

scoreboard players add @s HitTime 1
#execute as @s[scores={Damage=1..}] at @s run function system:basesystem/damageprocessing
#scoreboard players set @s Damage 0
execute as @s[scores={HP=..0}] at @s run kill @s