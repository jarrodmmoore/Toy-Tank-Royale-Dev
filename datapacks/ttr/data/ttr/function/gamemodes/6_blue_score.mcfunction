tellraw @a ["",{text:"\n"},{translate:"ttr.ctf.blue_scores",color:"blue"},{text:"\n"}]

scoreboard players add #blue_captures value 1

particle flash ~ ~1 ~ 0 0 0 1 1 force @a

execute as @a at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ 100000 ~ 100000
execute as @a at @s run playsound minecraft:entity.firework_rocket.twinkle master @s ~ 100000 ~ 100000

scoreboard players set @s lifespan 0