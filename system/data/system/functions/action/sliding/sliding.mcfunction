execute as @s at @s run summon minecraft:shulker ~ -10 ~ {Team:"NoCollision",Health:10f,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:16777216,ShowParticles:0b},{Id:11b,Amplifier:10b,Duration:16777216,ShowParticles:0b}],NoGravity:1b,Silent:1b,NoAI:1b,Tags:["sliding","System"],DeathLootTable:"system:none",ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}}]}
execute as @s at @s run summon minecraft:shulker ~ -10 ~ {Team:"NoCollision",Health:10f,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:16777216,ShowParticles:0b},{Id:11b,Amplifier:10b,Duration:16777216,ShowParticles:0b}],NoGravity:1b,Silent:1b,NoAI:1b,Tags:["sliding","sliding2","System"],DeathLootTable:"system:none",ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}}]}
execute as @s at @s run summon minecraft:shulker ~ -10 ~ {Team:"NoCollision",Health:10f,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:16777216,ShowParticles:0b},{Id:11b,Amplifier:10b,Duration:16777216,ShowParticles:0b}],NoGravity:1b,Silent:1b,NoAI:1b,Tags:["sliding","sliding3","System"],DeathLootTable:"system:none",ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}}]}
execute as @s at @s run summon minecraft:shulker ~ -10 ~ {Team:"NoCollision",Health:10f,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:16777216,ShowParticles:0b},{Id:11b,Amplifier:10b,Duration:16777216,ShowParticles:0b}],NoGravity:1b,Silent:1b,NoAI:1b,Tags:["sliding","sliding4","System"],DeathLootTable:"system:none",ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}}]}
execute as @s at @s run summon minecraft:shulker ~ -10 ~ {Team:"NoCollision",Health:10f,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:16777216,ShowParticles:0b},{Id:11b,Amplifier:10b,Duration:16777216,ShowParticles:0b}],NoGravity:1b,Silent:1b,NoAI:1b,Tags:["sliding","sliding5","System"],DeathLootTable:"system:none",ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}}]}
execute as @s at @s run summon minecraft:shulker ~ -10 ~ {Team:"NoCollision",Health:10f,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:16777216,ShowParticles:0b},{Id:11b,Amplifier:10b,Duration:16777216,ShowParticles:0b}],NoGravity:1b,Silent:1b,NoAI:1b,Tags:["sliding","sliding6","System"],DeathLootTable:"system:none",ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}}]}
execute as @s at @s run summon minecraft:shulker ~ -10 ~ {Team:"NoCollision",Health:10f,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:16777216,ShowParticles:0b},{Id:11b,Amplifier:10b,Duration:16777216,ShowParticles:0b}],NoGravity:1b,Silent:1b,NoAI:1b,Tags:["sliding","sliding7","System"],DeathLootTable:"system:none",ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}}]}
execute as @s at @s run summon minecraft:shulker ~ -10 ~ {Team:"NoCollision",Health:10f,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:16777216,ShowParticles:0b},{Id:11b,Amplifier:10b,Duration:16777216,ShowParticles:0b}],NoGravity:1b,Silent:1b,NoAI:1b,Tags:["sliding","sliding8","System"],DeathLootTable:"system:none",ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}}]}
execute as @s at @s run summon minecraft:shulker ~ -10 ~ {Team:"NoCollision",Health:10f,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:16777216,ShowParticles:0b},{Id:11b,Amplifier:10b,Duration:16777216,ShowParticles:0b}],NoGravity:1b,Silent:1b,NoAI:1b,Tags:["sliding","sliding9","System"],DeathLootTable:"system:none",ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}}]}
tag @s add sliding
execute as @e[type=shulker,sort=nearest,tag=sliding,scores={Time=2..}] at @s run tp @s @e[type=player,tag=sliding,limit=1,sort=nearest]
execute as @e[type=shulker,sort=nearest,limit=1,tag=sliding,scores={Time=2..}] at @s run tp ~ ~1 ~
execute as @e[type=shulker,sort=nearest,limit=1,tag=sliding,tag=sliding2,scores={Time=2..}] at @s run tp ~0.9 ~1 ~
execute as @e[type=shulker,sort=nearest,limit=1,tag=sliding,tag=sliding3,scores={Time=2..}] at @s run tp ~0.9 ~1 ~0.9
execute as @e[type=shulker,sort=nearest,limit=1,tag=sliding,tag=sliding4,scores={Time=2..}] at @s run tp ~0.9 ~1 ~-0.9
execute as @e[type=shulker,sort=nearest,limit=1,tag=sliding,tag=sliding5,scores={Time=2..}] at @s run tp ~-0.9 ~1 ~
execute as @e[type=shulker,sort=nearest,limit=1,tag=sliding,tag=sliding6,scores={Time=2..}] at @s run tp ~-0.9 ~1 ~0.9
execute as @e[type=shulker,sort=nearest,limit=1,tag=sliding,tag=sliding7,scores={Time=2..}] at @s run tp ~-0.9 ~1 ~-0.9
execute as @e[type=shulker,sort=nearest,limit=1,tag=sliding,tag=sliding8,scores={Time=2..}] at @s run tp ~ ~1 ~0.9
execute as @e[type=shulker,sort=nearest,limit=1,tag=sliding,tag=sliding9,scores={Time=2..}] at @s run tp ~ ~1 ~-0.9
scoreboard players set @s varA 3
scoreboard players operation @s MovementSpeed *= @s varA
execute as @s at @s run scoreboard players set @s KnockbackResist 1000
effect give @s minecraft:jump_boost 1 1 true
execute as @s[scores={OnSneak=0}] run scoreboard players set @s SlidingTrigger 0
execute as @s[scores={OnSneakTime=1..4}] run particle minecraft:block gravel ~ ~ ~ 0.1 0.1 0.1 1.5 5 normal @s
execute as @s[scores={OnSneakTime=1..4}] run playsound minecraft:block.gravel.step player @s ~ ~ ~ 100 1.25
execute as @s[scores={OnSneakTime=12..}] run scoreboard players set @s SlidingTrigger 0
tag @s remove sliding