execute positioned ~ ~ ~1 if block ~ ~ ~ black_concrete run function ttr:ai/nav_generate/block/north
execute positioned ~-1 ~ ~1 if block ~ ~ ~ black_concrete if block ~1 30 ~ #ttr:ai_nav if block ~ 30 ~-1 #ttr:ai_nav run function ttr:ai/nav_generate/block/northeast
execute positioned ~-1 ~ ~ if block ~ ~ ~ black_concrete run function ttr:ai/nav_generate/block/east
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ black_concrete if block ~1 30 ~ #ttr:ai_nav if block ~ 30 ~1 #ttr:ai_nav run function ttr:ai/nav_generate/block/southeast
execute positioned ~ ~ ~-1 if block ~ ~ ~ black_concrete run function ttr:ai/nav_generate/block/south
execute positioned ~1 ~ ~-1 if block ~ ~ ~ black_concrete if block ~-1 30 ~ #ttr:ai_nav if block ~ 30 ~1 #ttr:ai_nav run function ttr:ai/nav_generate/block/southwest
execute positioned ~1 ~ ~ if block ~ ~ ~ black_concrete run function ttr:ai/nav_generate/block/west
execute positioned ~1 ~ ~1 if block ~ ~ ~ black_concrete if block ~-1 30 ~ #ttr:ai_nav if block ~ 30 ~-1 #ttr:ai_nav run function ttr:ai/nav_generate/block/northwest
#we're avoiding diagonal navigation unless the neighboring blocks are wide open

#debug
#scoreboard players add #testvalue value 1
#tellraw @a ["",{"text":"nav block generated -> "},{"score":{"name":"#testvalue","objective":"value"}}]

#good job
kill @s