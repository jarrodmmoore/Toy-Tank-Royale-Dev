#i called this "chest_ambient" but this is also used by some non-chest items like coins and effect powerups

#track life
scoreboard players add @s itemLifetime 1
scoreboard players set @s lifespan 10

#animation
execute if entity @s[tag=!no_poof,scores={itemLifetime=5}] run particle cloud ~ ~1.2 ~ 0.2 0.2 0.2 0.03 4 normal
execute if entity @s[scores={itemLifetime=10..}] run tp @s ~ ~ ~ ~3.35 0

#invalid location? die
execute unless block ~ ~1 ~ air run scoreboard players set @s lifespan 0
#happens frequently when the arena transforms
#not 100% necessary because pickups have a limited lifespan, but it looks way better to not have pickups sitting in walls or invalid empty space

#particles if we're about to despawn
execute if entity @s[scores={itemLifetime=640..,itemID=2..}] run particle enchanted_hit ~ ~1.2 ~ 0.2 0.2 0.2 0.03 5 normal
execute if entity @s[scores={itemLifetime=800..}] run scoreboard players set @s lifespan 0