#store body/head model for other functions to use
scoreboard players operation #bodyModel value = @s tankBodyModel
scoreboard players operation #headModel value = @s tankHeadModel

#this is now just an index!
execute if score @s playerID matches 1..8 run function ttr:ai/node_ai/_index_1_8
execute if score @s playerID matches 9..16 run function ttr:ai/node_ai/_index_9_16
execute if score @s playerID matches 17..24 run function ttr:ai/node_ai/_index_17_24
execute if score @s playerID matches 25..32 run function ttr:ai/node_ai/_index_25_32
execute if score @s playerID matches 33..40 run function ttr:ai/node_ai/_index_33_40
execute if score @s playerID matches 41..48 run function ttr:ai/node_ai/_index_41_48
execute if score @s playerID matches 49..56 run function ttr:ai/node_ai/_index_49_56
execute if score @s playerID matches 57..64 run function ttr:ai/node_ai/_index_57_64
#gotta take advantage of them UUIDs!