#1
execute if score #currentSquare value matches 1 if score #area_4_active value matches 1 run summon area_effect_cloud -15 31 1 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_south"]}
execute if score #currentSquare value matches 1 if score #area_2_active value matches 1 run summon area_effect_cloud 1 30 -15 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_east"]}

#2
execute if score #currentSquare value matches 2 if score #area_1_active value matches 1 run summon area_effect_cloud -8 30 -15 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_west"]}
execute if score #currentSquare value matches 2 if score #area_5_active value matches 1 run summon area_effect_cloud 8 30 1 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_south"]}
execute if score #currentSquare value matches 2 if score #area_3_active value matches 1 run summon area_effect_cloud 24 30 -15 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_east"]}

#3
execute if score #currentSquare value matches 3 if score #area_2_active value matches 1 run summon area_effect_cloud 15 30 -15 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_west"]}
execute if score #currentSquare value matches 3 if score #area_6_active value matches 1 run summon area_effect_cloud 31 30 1 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_south"]}

#4
execute if score #currentSquare value matches 4 if score #area_1_active value matches 1 run summon area_effect_cloud -15 30 -8 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_north"]}
execute if score #currentSquare value matches 4 if score #area_5_active value matches 1 run summon area_effect_cloud 1 30 8 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_east"]}
execute if score #currentSquare value matches 4 if score #area_7_active value matches 1 run summon area_effect_cloud -15 30 24 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_south"]}

#5
execute if score #currentSquare value matches 5 if score #area_2_active value matches 1 run summon area_effect_cloud 8 30 -8 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_north"]}
execute if score #currentSquare value matches 5 if score #area_4_active value matches 1 run summon area_effect_cloud -8 30 8 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_west"]}
execute if score #currentSquare value matches 5 if score #area_6_active value matches 1 run summon area_effect_cloud 24 30 8 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_east"]}
execute if score #currentSquare value matches 5 if score #area_8_active value matches 1 run summon area_effect_cloud 8 30 24 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_south"]}

#6
execute if score #currentSquare value matches 6 if score #area_3_active value matches 1 run summon area_effect_cloud 31 30 -8 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_north"]}
execute if score #currentSquare value matches 6 if score #area_5_active value matches 1 run summon area_effect_cloud 15 30 8 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_west"]}
execute if score #currentSquare value matches 6 if score #area_9_active value matches 1 run summon area_effect_cloud 31 30 24 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_south"]}

#7
execute if score #currentSquare value matches 7 if score #area_4_active value matches 1 run summon area_effect_cloud -15 30 15 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_north"]}
execute if score #currentSquare value matches 7 if score #area_8_active value matches 1 run summon area_effect_cloud 1 30 31 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_east"]}

#8
execute if score #currentSquare value matches 8 if score #area_7_active value matches 1 run summon area_effect_cloud -8 30 31 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_west"]}
execute if score #currentSquare value matches 8 if score #area_5_active value matches 1 run summon area_effect_cloud 8 30 15 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_north"]}
execute if score #currentSquare value matches 8 if score #area_9_active value matches 1 run summon area_effect_cloud 24 30 31 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_east"]}

#9
execute if score #currentSquare value matches 9 if score #area_8_active value matches 1 run summon area_effect_cloud 15 30 31 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_west"]}
execute if score #currentSquare value matches 9 if score #area_6_active value matches 1 run summon area_effect_cloud 31 30 15 {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["squareNavOption","nav_north"]}