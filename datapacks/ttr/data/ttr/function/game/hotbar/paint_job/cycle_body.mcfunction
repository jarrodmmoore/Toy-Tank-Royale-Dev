execute at @s run playsound minecraft:item.bucket.fill master @s ~ 100000 ~ 100000
scoreboard players add @s cosmeticSet1 1
execute if score @s cosmeticSet1 matches 9.. run scoreboard players reset @s cosmeticSet1

scoreboard players set @s cosmeticMenu 100
scoreboard players set @s cosmeticMenu2 100

scoreboard players reset @s carrotInput
scoreboard players add @s[scores={shootCooldown=..5}] shootCooldown 6