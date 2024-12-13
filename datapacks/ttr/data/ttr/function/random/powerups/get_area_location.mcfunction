#add tag
execute if block ~ 12 ~ orange_wool run tag @s add pa1_item_chest
execute if block ~ 13 ~ magenta_wool run tag @s add pa2_item_chest
execute if block ~ 12 ~ light_blue_wool run tag @s add pa3_item_chest
execute if block ~ 11 ~ yellow_wool run tag @s add pa4_item_chest
execute if block ~ 14 ~ lime_wool run tag @s add pa5_item_chest
execute if block ~ 11 ~ pink_wool run tag @s add pa6_item_chest
execute if block ~ 12 ~ gray_wool run tag @s add pa7_item_chest
execute if block ~ 13 ~ light_gray_wool run tag @s add pa8_item_chest
execute if block ~ 12 ~ cyan_wool run tag @s add pa9_item_chest

#since item pickups never move, we can just calculate this once and stop worrying about it
#much better than with tanks and pellets, which need to regularly re-calculate what square they're in