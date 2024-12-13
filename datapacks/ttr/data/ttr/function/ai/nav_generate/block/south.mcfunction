execute if block ~ 30 ~ #ttr:ai_nav run setblock ~ ~ ~ white_concrete
execute if block ~ 30 ~ #ttr:ai_nav run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["navFill"]}

execute unless block ~ 30 ~ #ttr:ai_nav run setblock ~ ~ ~ quartz_bricks