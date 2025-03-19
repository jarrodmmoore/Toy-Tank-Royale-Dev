execute at @s run playsound minecraft:item.bucket.fill master @s ~ 100000 ~ 100000
scoreboard players add @s cosmeticSet1 1
execute if score @s cosmeticSet1 matches 9.. run scoreboard players add @s tankBodyModel 1
execute if score @s cosmeticSet1 matches 9.. run scoreboard players reset @s cosmeticSet1

execute if score @s tankBodyModel matches 2.. run scoreboard players set @s tankBodyModel 0
execute if score #force_turtles value matches 1 run scoreboard players set @s tankBodyModel 1

scoreboard players set @s cosmeticMenu 100
scoreboard players set @s cosmeticMenu2 100

scoreboard players reset @s carrotInput
scoreboard players add @s[scores={shootCooldown=..5}] shootCooldown 6