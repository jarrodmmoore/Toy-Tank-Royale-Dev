execute unless score #last_royal value = @s playerID run scoreboard players set #crown_effect value 1

execute as @e[limit=1,sort=nearest,tag=gold_crown,type=armor_stand] run tp @s ~ ~-.2 ~ 0 0

execute if score #crown_effect value matches 1 at @s run playsound minecraft:entity.player.levelup master @a ~ ~10 ~ 1.7 1.5
execute if score #crown_effect value matches 1 at @s run particle happy_villager ~ ~1 ~ 0.2 0.2 0.2 0.05 10

scoreboard players operation #last_royal value = @s playerID

scoreboard players set #already_ran value 1
scoreboard players set #crown_effect value 0

#remember location
#kill @e[type=area_effect_cloud,tag=lastCrownLocation]
#execute at @s positioned ~ 29 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["lastCrownLocation"]}