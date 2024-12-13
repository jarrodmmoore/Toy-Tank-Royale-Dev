#full rim exists?
scoreboard players set #full_rim value 8
execute if score #area_1_active value matches 0 run scoreboard players remove #full_rim value 1
execute if score #area_2_active value matches 0 run scoreboard players remove #full_rim value 1
execute if score #area_3_active value matches 0 run scoreboard players remove #full_rim value 1
execute if score #area_4_active value matches 0 run scoreboard players remove #full_rim value 1
execute if score #area_6_active value matches 0 run scoreboard players remove #full_rim value 1
execute if score #area_7_active value matches 0 run scoreboard players remove #full_rim value 1
execute if score #area_8_active value matches 0 run scoreboard players remove #full_rim value 1
execute if score #area_9_active value matches 0 run scoreboard players remove #full_rim value 1

execute if score #area_1_connections value matches 1 if score #area_1_active value matches 1 run scoreboard players set #area_2_removable value 0
execute if score #area_1_connections value matches 1 if score #area_1_active value matches 1 run scoreboard players set #area_4_removable value 0
execute if score #area_2_connections value matches 1 if score #area_2_active value matches 1 run scoreboard players set #area_1_removable value 0
execute if score #area_2_connections value matches 1 if score #area_2_active value matches 1 run scoreboard players set #area_3_removable value 0
execute if score #area_2_connections value matches 1 if score #area_2_active value matches 1 run scoreboard players set #area_5_removable value 0
execute if score #area_3_connections value matches 1 if score #area_3_active value matches 1 run scoreboard players set #area_2_removable value 0
execute if score #area_3_connections value matches 1 if score #area_3_active value matches 1 run scoreboard players set #area_6_removable value 0
execute if score #area_4_connections value matches 1 if score #area_4_active value matches 1 run scoreboard players set #area_1_removable value 0
execute if score #area_4_connections value matches 1 if score #area_4_active value matches 1 run scoreboard players set #area_5_removable value 0
execute if score #area_4_connections value matches 1 if score #area_4_active value matches 1 run scoreboard players set #area_7_removable value 0
execute if score #area_5_connections value matches 1 if score #area_5_active value matches 1 run scoreboard players set #area_2_removable value 0
execute if score #area_5_connections value matches 1 if score #area_5_active value matches 1 run scoreboard players set #area_4_removable value 0
execute if score #area_5_connections value matches 1 if score #area_5_active value matches 1 run scoreboard players set #area_6_removable value 0
execute if score #area_5_connections value matches 1 if score #area_5_active value matches 1 run scoreboard players set #area_8_removable value 0
execute if score #area_6_connections value matches 1 if score #area_6_active value matches 1 run scoreboard players set #area_3_removable value 0
execute if score #area_6_connections value matches 1 if score #area_6_active value matches 1 run scoreboard players set #area_5_removable value 0
execute if score #area_6_connections value matches 1 if score #area_6_active value matches 1 run scoreboard players set #area_9_removable value 0
execute if score #area_7_connections value matches 1 if score #area_7_active value matches 1 run scoreboard players set #area_4_removable value 0
execute if score #area_7_connections value matches 1 if score #area_7_active value matches 1 run scoreboard players set #area_8_removable value 0
execute if score #area_8_connections value matches 1 if score #area_8_active value matches 1 run scoreboard players set #area_5_removable value 0
execute if score #area_8_connections value matches 1 if score #area_8_active value matches 1 run scoreboard players set #area_7_removable value 0
execute if score #area_8_connections value matches 1 if score #area_8_active value matches 1 run scoreboard players set #area_9_removable value 0
execute if score #area_9_connections value matches 1 if score #area_9_active value matches 1 run scoreboard players set #area_6_removable value 0
execute if score #area_9_connections value matches 1 if score #area_9_active value matches 1 run scoreboard players set #area_8_removable value 0

execute if score #area_1_active value matches 1 if score #area_1_connections values matches ..1 run scoreboard players set #area_2_removable value 0
execute if score #area_1_active value matches 1 if score #area_1_connections values matches ..1 run scoreboard players set #area_4_removable value 0
execute if score #area_3_active value matches 1 if score #area_3_connections values matches ..1 run scoreboard players set #area_2_removable value 0
execute if score #area_3_active value matches 1 if score #area_3_connections values matches ..1 run scoreboard players set #area_6_removable value 0
execute if score #area_7_active value matches 1 if score #area_7_connections values matches ..1 run scoreboard players set #area_4_removable value 0
execute if score #area_7_active value matches 1 if score #area_7_connections values matches ..1 run scoreboard players set #area_8_removable value 0
execute if score #area_9_active value matches 1 if score #area_9_connections values matches ..1 run scoreboard players set #area_6_removable value 0
execute if score #area_9_active value matches 1 if score #area_9_connections values matches ..1 run scoreboard players set #area_8_removable value 0

#don't remove middle while connecting pieces exist
execute if score #area_2_active value matches 1 run scoreboard players set #area_5_removable value 0
execute if score #area_4_active value matches 1 run scoreboard players set #area_5_removable value 0
execute if score #area_6_active value matches 1 run scoreboard players set #area_5_removable value 0
execute if score #area_8_active value matches 1 run scoreboard players set #area_5_removable value 0

#exceptions to previous
execute if score #area_5_active value matches 1 if score #full_rim value matches 7.. run scoreboard players set #area_5_removable value 1

#missing the middle?
execute if score #area_5_active value matches 0 if score #area_2_connections value matches 2.. if score #full_rim value matches ..7 run scoreboard players set #area_2_removable value 0
execute if score #area_5_active value matches 0 if score #area_4_connections value matches 2.. if score #full_rim value matches ..7 run scoreboard players set #area_4_removable value 0
execute if score #area_5_active value matches 0 if score #area_6_connections value matches 2.. if score #full_rim value matches ..7 run scoreboard players set #area_6_removable value 0
execute if score #area_5_active value matches 0 if score #area_8_connections value matches 2.. if score #full_rim value matches ..7 run scoreboard players set #area_8_removable value 0

execute if score #area_5_active value matches 0 if score #area_1_active value matches 1 if score #area_1_connections value matches 2.. if score #full_rim value matches ..7 run scoreboard players set #area_1_removable value 0
execute if score #area_5_active value matches 0 if score #area_3_active value matches 1 if score #area_3_connections value matches 2.. if score #full_rim value matches ..7 run scoreboard players set #area_3_removable value 0
execute if score #area_5_active value matches 0 if score #area_7_active value matches 1 if score #area_7_connections value matches 2.. if score #full_rim value matches ..7 run scoreboard players set #area_7_removable value 0
execute if score #area_5_active value matches 0 if score #area_9_active value matches 1 if score #area_9_connections value matches 2.. if score #full_rim value matches ..7 run scoreboard players set #area_9_removable value 0