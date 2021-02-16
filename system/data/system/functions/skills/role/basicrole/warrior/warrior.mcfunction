
#メイン
execute if entity @s[advancements={system:skilltree/role/basicrole/warrior/bash=true},predicate=system:checkmainaction/bash,scores={MP=2..}] run function system:skills/role/basicrole/warrior/bash
execute if entity @s[advancements={system:skilltree/role/basicrole/warrior/swordbreak=true},predicate=system:checkmainaction/swordbreak,scores={MP=3..}] run function system:skills/role/basicrole/warrior/swordbreak
execute if entity @s[advancements={system:skilltree/role/basicrole/warrior/armorbreak=true},predicate=system:checkmainaction/armorbreak,scores={MP=3..}] run function system:skills/role/basicrole/warrior/armorbreak
execute if entity @s[advancements={system:skilltree/role/basicrole/warrior/pulsion=true},predicate=system:checkmainaction/pulsion,scores={MP=3..,StepTime2=3}] run function system:skills/role/basicrole/warrior/pulsion
#パッシブ
execute if entity @s[advancements={system:skilltree/role/basicrole/warrior/defencestance=true}] run function system:skills/role/basicrole/warrior/defencestance
execute if entity @s[advancements={system:skilltree/role/basicrole/warrior/guardstance=true}] run function system:skills/role/basicrole/warrior/guardstance
execute if entity @s[advancements={system:skilltree/role/basicrole/warrior/innervate=true}] run function system:skills/role/basicrole/warrior/innervate
execute if entity @s[advancements={system:skilltree/role/basicrole/warrior/ironwill=true},scores={HP=..0}] run function system:skills/role/basicrole/warrior/ironwill
execute if entity @s[advancements={system:skilltree/role/basicrole/warrior/parrying=true}] run function system:skills/role/basicrole/warrior/parrying
execute if entity @s[advancements={system:skilltree/role/basicrole/warrior/weaponmastery_warrior=true}] run function system:skills/role/basicrole/warrior/weaponmastery_warrior