## timers
scoreboard objectives add echotimer dummy
scoreboard objectives add jumptimer dummy
scoreboard objectives add arrowcatch dummy
scoreboard objectives add slepttimer dummy
scoreboard objectives add backfliptimer dummy
scoreboard objectives add Flipping dummy
scoreboard objectives add throwing dummy
scoreboard objectives add batonhit dummy
scoreboard objectives add inuse dummy
scoreboard objectives add laserdistance dummy
scoreboard objectives add regenning dummy
scoreboard objectives add breathtimer dummy

## movement and tiring out
scoreboard objectives add Jump minecraft.custom:minecraft.jump
scoreboard objectives add Sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add DamageTaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add timelordamage minecraft.custom:minecraft.damage_resisted
scoreboard objectives add timedamagefluid dummy
scoreboard objectives add DamageDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add Fly minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add Fatigue dummy
scoreboard objectives add Slept minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add StandStill dummy
scoreboard objectives add PosX dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add MotionX dummy
scoreboard objectives add MotionZ dummy
scoreboard objectives add PosX2 dummy
scoreboard objectives add PosZ2 dummy

## in game actions
scoreboard objectives add FlashRing minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add blackmask minecraft.used:minecraft.carrot_on_a_stick

## stats
scoreboard objectives add Health health
scoreboard objectives add RightClick minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add flashcrouch minecraft.custom:minecraft.sneak_time
scoreboard objectives add ddcrouch minecraft.custom:minecraft.sneak_time
scoreboard objectives add supercrouch minecraft.custom:minecraft.sneak_time
scoreboard objectives add timelordcrouch minecraft.custom:minecraft.sneak_time
scoreboard objectives add Food food
scoreboard objectives add WaterWalk minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add Shield minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add regenergy dummy
scoreboard objectives add timelordeaths deathCount
scoreboard objectives add incarnation dummy
scoreboard objectives add regendelay dummy
scoreboard objectives add damagedivisor dummy
scoreboard players set @e damagedivisor 10
scoreboard objectives add halfhearts dummy
scoreboard objectives add healthdamage dummy

## teams
team add rightclick
team modify rightclick collisionRule never

## test
scoreboard objectives add targeted dummy
scoreboard objectives add targeting dummy
scoreboard objectives add ironCrouch minecraft.custom:minecraft.sneak_time
