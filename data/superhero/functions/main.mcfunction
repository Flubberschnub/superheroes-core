#execute as @e run function superhero:fatigue
#execute as @e run function superhero:standstill
#execute as @e[tag=test] run function superhero:test

## arrow no have yucky bubbles
execute as @e[type=arrow,tag=timefreezed] run data merge entity @s {Color:-1}

## can't breathe in space (the end)
execute as @e at @s if block ~ ~ ~ void_air run effect give @s wither 1 0 true
tag @e[tag=vacuum] remove vacuum
execute as @e[type=!enderman,type=!shulker,type=!ender_dragon,tag=superhero_the_end] run tag @s add vacuum
## space helmet
tag @e[tag=oxygen] remove oxygen

execute as @e[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Oxygen Helmet\",\"color\":\"blue\",\"italic\":false}",Lore:["{\"text\":\"Maintains oxygen in hostile environments\",\"color\":\"gold\",\"italic\":false}"]},HideFlags:1,Enchantments:[{id:"minecraft:respiration",lvl:255s}],SkullOwner:{Id:"a39b695d-b4f7-4c12-a236-6182637ec65c",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2U4YWFkNjczMTU3YzkyMzE3YTg4YjFmODZmNTI3MWYxY2Q3Mzk3ZDdmYzhlYzMyODFmNzMzZjc1MTYzNCJ9fX0="}]}}}}]}] run tag @s add oxygen
execute as @e[tag=vacuum] run function superhero:vacuum
#summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chainmail_helmet",Count:1b,tag:{display:{Name:"{\"text\":\"Oxygen Helmet\",\"color\":\"blue\",\"italic\":false}",Lore:["{\"text\":\"Maintains oxygen in hostile environments\",\"color\":\"gold\",\"italic\":false}"]},HideFlags:1,CustomModelData:7,Enchantments:[{id:"minecraft:respiration",lvl:255s}]}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:glass",Count:1b}}] at @s if entity @e[type=item,distance=..0.3,nbt={Item:{id:"minecraft:redstone",Count:1b}}] if entity @e[type=item,distance=..0.3,nbt={Item:{id:"minecraft:bucket",Count:1b}}] run tag @e[distance=..0.3,type=item] add createhelmet
execute at @e[tag=createhelmet,limit=1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Oxygen Helmet\",\"color\":\"blue\",\"italic\":false}",Lore:["{\"text\":\"Maintains oxygen in hostile environments\",\"color\":\"gold\",\"italic\":false}"]},HideFlags:1,Enchantments:[{id:"minecraft:respiration",lvl:255s}],SkullOwner:{Id:"a39b695d-b4f7-4c12-a236-6182637ec65c",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2U4YWFkNjczMTU3YzkyMzE3YTg4YjFmODZmNTI3MWYxY2Q3Mzk3ZDdmYzhlYzMyODFmNzMzZjc1MTYzNCJ9fX0="}]}}}}}
kill @e[tag=createhelmet]
#summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Oxygen Helmet\",\"color\":\"blue\",\"italic\":false}",Lore:["{\"text\":\"Maintains oxygen in hostile environments\",\"color\":\"gold\",\"italic\":false}"]},HideFlags:1,Enchantments:[{id:"minecraft:respiration",lvl:255s}],SkullOwner:{Id:"a39b695d-b4f7-4c12-a236-6182637ec65c",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2U4YWFkNjczMTU3YzkyMzE3YTg4YjFmODZmNTI3MWYxY2Q3Mzk3ZDdmYzhlYzMyODFmNzMzZjc1MTYzNCJ9fX0="}]}}}}}
