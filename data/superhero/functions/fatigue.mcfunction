## slowness
effect give @s[scores={Health=..5}] minecraft:slowness 1 3 true
effect give @s[scores={DamageDealt=800..}] minecraft:slowness 1 2 true
effect give @s[scores={Sprint=30000..}] minecraft:slowness 1 2 true
effect give @s[scores={Jump=50..}] minecraft:jump_boost 1 252 true
effect give @s[scores={DamageDealt=800..}] minecraft:mining_fatigue 1 7 true
effect give @s[scores={Fatigue=15..}] minecraft:mining_fatigue 1 7 true
effect give @s[scores={Fatigue=30..}] minecraft:slowness 1 2 true

## sleeping resets fatigue
scoreboard players add @s slepttimer 1
scoreboard players set @s[scores={slepttimer=6..}] slepttimer 0
scoreboard players remove @s[scores={Slept=1..,slepttimer=5}] Slept 1
execute as @s[scores={Slept=1}] run function superhero:sleepeffects

## standing still resets fatigue
function superhero:standstill

## billy clubs are light and quick
scoreboard players set @s[tag=dd,nbt={SelectedItem:{id:"minecraft:shield",tag:{display:{Name:"{\"text\":\"Baton\",\"color\":\"dark_red\",\"bold\":\"true\"}"}}}}] DamageDealt 0