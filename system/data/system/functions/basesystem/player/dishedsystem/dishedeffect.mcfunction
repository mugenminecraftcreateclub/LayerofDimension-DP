#基礎回復量記述
scoreboard players add @s[scores={EatApple=1}] Saturation 16
scoreboard players add @s[scores={EatBeef=1}] Saturation 12
scoreboard players add @s[scores={EatBeetRoot=1}] Saturation 5
scoreboard players add @s[scores={EatBeetRootS=1}] Saturation 33
scoreboard players add @s[scores={EatBPotato=1}] Saturation 28
scoreboard players add @s[scores={EatBread=1}] Saturation 28
scoreboard players add @s[scores={EatCake=1}] Saturation 0
scoreboard players add @s[scores={EatCarrot=1}] Saturation 17
scoreboard players add @s[scores={EatCBeef=1}] Saturation 52
scoreboard players add @s[scores={EatCChicken=1}] Saturation 33
scoreboard players add @s[scores={EatCCod=1}] Saturation 28
scoreboard players add @s[scores={EatChicken=1}] Saturation 8
scoreboard players add @s[scores={EatCMutton=1}] Saturation 39
scoreboard players add @s[scores={EatCod=1}] Saturation 6
scoreboard players add @s[scores={EatCookie=1}] Saturation 6
scoreboard players add @s[scores={EatCPorkchop=1}] Saturation 52
scoreboard players add @s[scores={EatCRabbit=1}] Saturation 28
scoreboard players add @s[scores={EatCSalmon=1}] Saturation 39
scoreboard players add @s[scores={EatDriedKelp=1}] Saturation 4
scoreboard players add @s[scores={EatENCGApple=1}] Saturation 34
scoreboard players add @s[scores={EatGApple=1}] Saturation 34
scoreboard players add @s[scores={EatMelonS=1}] Saturation 8
scoreboard players add @s[scores={EatMushroom=1}] Saturation 33
scoreboard players add @s[scores={EatMutton=1}] Saturation 8
scoreboard players add @s[scores={EatPorkchop=1}] Saturation 12
scoreboard players add @s[scores={EatPotato=1}] Saturation 4
scoreboard players add @s[scores={EatPPotato=1}] Saturation 8
scoreboard players add @s[scores={EatPufferF=1}] Saturation 3
scoreboard players add @s[scores={EatPumpkinPie=1}] Saturation 32
scoreboard players add @s[scores={EatRabbit=1}] Saturation 12
scoreboard players add @s[scores={EatRabbitStew=1}] Saturation 55
scoreboard players add @s[scores={EatRFlesh=1}] Saturation 12
scoreboard players add @s[scores={EatSalmon=1}] Saturation 6
scoreboard players add @s[scores={EatSpiderEye=1}] Saturation 13
scoreboard players add @s[scores={EatSweetBerries=1}] Saturation 6
scoreboard players add @s[scores={EatTropicalF=1}] Saturation 3
scoreboard players add @s[scores={EatHoneyBottle=1..}] Saturation 3
scoreboard players set @s[scores={EatApple=1}] EatApple 0
scoreboard players set @s[scores={EatBeef=1}] EatBeef 0
scoreboard players set @s[scores={EatBeetRoot=1}] EatBeetRoot 0
scoreboard players set @s[scores={EatBeetRootS=1}] EatBeetRootS 0
scoreboard players set @s[scores={EatBPotato=1}] EatBPotato 0
scoreboard players set @s[scores={EatBread=1}] EatBread 0
scoreboard players set @s[scores={EatCake=1}] EatCake 0
scoreboard players set @s[scores={EatCarrot=1}] EatCarrot 0
scoreboard players set @s[scores={EatCBeef=1}] EatCBeef 0
scoreboard players set @s[scores={EatCChicken=1}] EatCChicken 0
scoreboard players set @s[scores={EatCCod=1}] EatCCod 0
scoreboard players set @s[scores={EatChicken=1}] EatChicken 0
scoreboard players set @s[scores={EatCMutton=1}] EatCMutton 0
scoreboard players set @s[scores={EatCod=1}] EatCod 0
scoreboard players set @s[scores={EatCookie=1}] EatCookie 0
scoreboard players set @s[scores={EatCPorkchop=1}] EatCPorkchop 0
scoreboard players set @s[scores={EatCRabbit=1}] EatCRabbit 0
scoreboard players set @s[scores={EatCSalmon=1}] EatCSalmon 0
scoreboard players set @s[scores={EatDriedKelp=1}] EatDriedKelp 0
scoreboard players set @s[scores={EatENCGApple=1}] EatENCGApple 0
scoreboard players set @s[scores={EatGApple=1}] EatGApple 0
scoreboard players set @s[scores={EatMelonS=1}] EatMelonS 0
scoreboard players set @s[scores={EatMushroom=1}] EatMushroom 0
scoreboard players set @s[scores={EatMutton=1}] EatMutton 0
scoreboard players set @s[scores={EatPorkchop=1}] EatPorkchop 0
scoreboard players set @s[scores={EatPotato=1}] EatPotato 0
scoreboard players set @s[scores={EatPPotato=1}] EatPPotato 0
scoreboard players set @s[scores={EatPufferF=1}] EatPufferF 0
scoreboard players set @s[scores={EatPumpkinPie=1}] EatPumpkinPie 0
scoreboard players set @s[scores={EatRabbit=1}] EatRabbit 0
scoreboard players set @s[scores={EatRabbitStew=1}] EatRabbitStew 0
scoreboard players set @s[scores={EatRFlesh=1}] EatRFlesh 0
scoreboard players set @s[scores={EatSalmon=1}] EatSalmon 0
scoreboard players set @s[scores={EatSpiderEye=1}] EatSpiderEye 0
scoreboard players set @s[scores={EatSweetBerries=1}] EatSweetBerries 0
scoreboard players set @s[scores={EatTropicalF=1}] EatTropicalF 0
scoreboard players set @s[scores={EatHoneyBottle=1..}] EatHoneyBottle 0

#以下料理効果記述
execute if entity @s[scores={FoodAbility=1}] run tp ~ ~10000 ~

#ここまで
execute as @s run scoreboard players set @s FoodAbility 0
execute as @s run scoreboard players set @s EatFoodF 0