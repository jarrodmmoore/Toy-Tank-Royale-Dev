execute if block ~ 30 ~ #ttr:ai_nav run setblock ~ ~ ~ brown_concrete
execute if block ~ 30 ~ #ttr:ai_nav run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["navFill"]}

execute unless block ~ 30 ~ #ttr:ai_nav run setblock ~ ~ ~ quartz_bricks


#don't let the AI target itself ;)
execute if entity @s[tag=ai,type=zombie] run tag @s add sp_nav_source