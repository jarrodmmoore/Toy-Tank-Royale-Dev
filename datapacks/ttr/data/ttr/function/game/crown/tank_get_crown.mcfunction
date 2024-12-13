execute unless score #last_royal value = @s playerID run scoreboard players set #crown_effect value 1

execute if entity @s[tag=!player_ded] at @s as @e[limit=1,sort=nearest,tag=gold_crown,type=armor_stand] run tp @s ~ ~-.2 ~ 0 0
execute if entity @s[tag=player_ded] at @s as @e[limit=1,sort=nearest,tag=gold_crown,type=armor_stand] run tp @s ~ ~-4 ~ 0 0

execute if entity @s[tag=!player_ded] if score #crown_effect value matches 1 at @s run playsound minecraft:entity.player.levelup master @a ~ ~10 ~ 1.7 1.5
execute if entity @s[tag=!player_ded] if score #crown_effect value matches 1 at @s run particle happy_villager ~ ~1 ~ 0.2 0.2 0.2 0.05 10

scoreboard players operation #last_royal value = @s playerID

scoreboard players set #already_ran value 1
scoreboard players set #crown_effect value 0