#execute as @s store result score @s PosX run data get entity @s Pos[0] 1000
#execute as @s store result score @s PosZ run data get entity @s Pos[2] 1000
#execute as @s store result score @s MotionX run scoreboard players operation @s PosX2 -= @s PosX
#execute as @s store result score @s MotionZ run scoreboard players operation @s PosZ2 -= @s PosZ
#execute as @s[scores={MotionX=0,MotionZ=0}] run scoreboard players add @s StandStill 1

## temp command
scoreboard players add @s StandStill 1

#execute as @s store result score @s PosX2 run data get entity @s Pos[0] 1000
#execute as @s store result score @s PosZ2 run data get entity @s Pos[2] 1000
scoreboard players set @s[scores={StandStill=300..}] StandStill 0
scoreboard players set @s[scores={StandStill=290..}] DamageDealt 0
scoreboard players set @s[scores={StandStill=290..}] Jump 0
scoreboard players set @s[scores={StandStill=290..}] Sprint 0
scoreboard players set @s[scores={StandStill=290..}] DamageTaken 0
scoreboard players set @s[scores={StandStill=290..}] Fly 0
scoreboard players set @s[scores={StandStill=290..}] Fatigue 0