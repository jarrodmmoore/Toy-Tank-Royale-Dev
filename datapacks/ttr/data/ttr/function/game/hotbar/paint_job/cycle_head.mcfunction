execute at @s run playsound minecraft:item.bucket.fill master @s ~ 100000 ~ 100000 1.3
scoreboard players add @s cosmeticSet2 1
execute if score @s cosmeticSet2 matches 9.. run scoreboard players reset @s cosmeticSet2

scoreboard players set @s cosmeticMenu 100
scoreboard players set @s cosmeticMenu2 100

scoreboard players reset @s carrotInput
scoreboard players add @s[scores={shootCooldown=..5}] shootCooldown 6