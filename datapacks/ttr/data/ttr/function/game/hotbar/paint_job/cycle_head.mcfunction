execute at @s run playsound minecraft:item.bucket.fill master @s ~ 100000 ~ 100000 1.3
scoreboard players add @s cosmeticSet2 1
execute if score @s cosmeticSet2 matches 9.. run scoreboard players add @s tankHeadModel 1
execute if score @s cosmeticSet2 matches 9.. run scoreboard players reset @s cosmeticSet2

execute if score @s tankHeadModel matches 2.. run scoreboard players set @s tankHeadModel 0
execute if score #force_turtles value matches 1 run scoreboard players set @s tankHeadModel 1

scoreboard players set @s cosmeticMenu 100
scoreboard players set @s cosmeticMenu2 100

scoreboard players reset @s carrotInput
scoreboard players add @s[scores={shootCooldown=..5}] shootCooldown 6