scoreboard players add @s tankDash 1

scoreboard players set @s inputDir 1
execute if entity @s[scores={dashDirection=1}] run scoreboard players set @s inputDir 5
execute if entity @s[scores={dashDirection=2}] run scoreboard players set @s inputDir 6
execute if entity @s[scores={dashDirection=3}] run scoreboard players set @s inputDir 7
execute if entity @s[scores={dashDirection=4}] run scoreboard players set @s inputDir 8
execute if entity @s[scores={dashDirection=5}] run scoreboard players set @s inputDir 1
execute if entity @s[scores={dashDirection=6}] run scoreboard players set @s inputDir 2
execute if entity @s[scores={dashDirection=7}] run scoreboard players set @s inputDir 3
execute if entity @s[scores={dashDirection=8}] run scoreboard players set @s inputDir 4

execute if entity @s[scores={tankDash=21..}] run scoreboard players reset @s tankDash

#check for items more frequently while dashing so we don't skip over them
scoreboard players set @s fastPickup 5

tag @s add speedo