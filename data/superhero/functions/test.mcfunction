## test

## test heat vision
#execute as @s at @s anchored eyes run particle dust 1.000 0.000 0.000 1 ^-0.2 ^ ^1 0 0 0 0 3 normal
#execute as @s at @s anchored eyes run particle dust 1.000 0.000 0.000 1 ^-0.2 ^ ^2 0 0 0 0 3 normal
#execute as @s at @s anchored eyes run particle dust 1.000 0.000 0.000 1 ^-0.2 ^ ^3 0 0 0 0 3 normal
#execute as @s at @s anchored eyes run particle dust 1.000 0.000 0.000 1 ^-0.2 ^ ^4 0 0 0 0 3 normal
#execute as @s at @s anchored eyes run particle dust 1.000 0.000 0.000 1 ^-0.2 ^ ^5 0 0 0 0 3 normal
#execute as @s at @s anchored eyes run particle dust 1.000 0.000 0.000 1 ^-0.2 ^ ^6 0 0 0 0 3 normal
#execute as @s at @s anchored eyes run particle dust 1.000 0.000 0.000 1 ^0.2 ^ ^1 0 0 0 0 3 normal
#execute as @s at @s anchored eyes run particle dust 1.000 0.000 0.000 1 ^0.2 ^ ^2 0 0 0 0 3 normal
#execute as @s at @s anchored eyes run particle dust 1.000 0.000 0.000 1 ^0.2 ^ ^3 0 0 0 0 3 normal
#execute as @s at @s anchored eyes run particle dust 1.000 0.000 0.000 1 ^0.2 ^ ^4 0 0 0 0 3 normal
#execute as @s at @s anchored eyes run particle dust 1.000 0.000 0.000 1 ^0.2 ^ ^5 0 0 0 0 3 normal
#execute as @s at @s anchored eyes run particle dust 1.000 0.000 0.000 1 ^0.2 ^ ^6 0 0 0 0 3 normal

#execute as @s at @s anchored eyes positioned ^ ^ ^3 if entity @e[distance=..2] run say kill

## test targeting system (iron man)
#summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["targeter"]}
#summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["targeter2","targeter"]}
#summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["targeter3","targeter"]}
#summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["targeter4","targeter"]}
#summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["targeter5","targeter"]}
#scoreboard players add @e[tag=targeter] targeting 1
#scoreboard players add @e[tag=targeter2] targeting 1
#scoreboard players add @e[tag=targeter3] targeting 1
#scoreboard players add @e[tag=targeter4] targeting 1
#scoreboard players add @e[tag=targeter5] targeting 1
#kill @e[scores={targeting=5..}]
#execute at @s anchored eyes run tp @e[tag=targeter,limit=1] ^ ^ ^10
#execute at @s anchored eyes run tp @e[tag=targeter2,limit=1] ^ ^ ^5
#execute at @s anchored eyes run tp @e[tag=targeter3,limit=1] ^ ^ ^20
#execute at @s anchored eyes run tp @e[tag=targeter4,limit=1] ^ ^ ^15
#execute at @s anchored eyes run tp @e[tag=targeter5,limit=1] ^ ^ ^1
#execute at @e[tag=targeter] run scoreboard players set @e[distance=..3,tag=!test,tag=!targeter] targeted 1
#scoreboard players add @e[scores={targeted=1..}] targeted 1
#execute as @e[scores={targeted=140..}] run scoreboard players reset @s targeted
#effect clear @e[scores={targeted=1..}] glowing
#effect give @e[scores={targeted=1..}] glowing 1 1 true
#scoreboard players set @e[distance=..3,type=!player] targeted 1
#execute as @e[scores={targeted=1..}] if entity @e[tag=test,scores={ironCrouch=1..}] run effect give @s wither 10 1 true
#scoreboard players reset @s ironCrouch

## test custom damage system
#effect clear @s resistance
#effect give @s resistance 1 255 true
#execute store result score @s timedamagefluid run scoreboard players get @s timelordamage
#execute store result score @s halfhearts run scoreboard players operation @s timedamagefluid /= @s damagedivisor
#execute as @s[scores={regenergy=1000..}] if score @s Health <= @s halfhearts run function timelord:regenerate
#execute as @s[scores={halfhearts=1..}] if score @s Health > @s halfhearts run scoreboard players operation @s healthdamage = @s timelordamage
#scoreboard players reset @s halfhearts
#scoreboard players reset @s timedamagefluid
#scoreboard players operation @s healthdamage = @s timelordamage
#execute if score @s healthdamage matches 12.. if entity @s[nbt={HurtTime:0s}] as @s run function du:player/damage
#scoreboard players reset @s timelordamage

##light cycle base
summon minecraft:horse ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tame:1b,Tags:["tester","bikebase"],ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:12}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.movementSpeed,Base:0.5},{Name:horse.jumpStrength,Base:1}],SaddleItem:{id:"minecraft:iron_nugget",Count:1b,CustomModelData:12}}

summon minecraft:horse ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tame:1b,Tags:["tester","bikebase"],Passengers:[{id:"minecraft:armor_stand",Tags:["tester","testerstand"],ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:12}}]}],ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:12}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.movementSpeed,Base:0.5},{Name:horse.jumpStrength,Base:1}],SaddleItem:{id:"minecraft:saddle",Count:1b}}
