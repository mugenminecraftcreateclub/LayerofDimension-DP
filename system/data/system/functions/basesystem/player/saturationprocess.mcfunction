#満腹度が80以上の時、食料ゲージを減らさない
effect give @s[scores={Saturation=80..}] minecraft:saturation 1 0 true

#料理効果
execute as @s run function system:basesystem/player/dishedsystem/dishedsystem

#満腹度が30以上かつHPがMaxHP未満の場合、満腹度減少速度を三倍にして、自然回復速度を3倍にする。
scoreboard players set @s varA 3
scoreboard players set @s varC 10000
scoreboard players operation @s varB = @s HP
scoreboard players operation @s varB *= @s varC
scoreboard players operation @s varB /= @s MaxHP
scoreboard players operation @s[scores={Saturation=30..,varB=..9999}] HPRegeneration /= @s varA
scoreboard players operation @s[scores={Saturation=30..,varB=..9999}] SaturationSubT /= @s varA