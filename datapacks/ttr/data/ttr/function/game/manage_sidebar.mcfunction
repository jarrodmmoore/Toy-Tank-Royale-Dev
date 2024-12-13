#1.20.3
#because the objective title on the sidebar shows up when there's no scores, we're gonna have to play babysitter :/

#(done to avoid confusing players due to the sidebar saying "Coins" for absolutely no reason)

execute if score #show_sidebar value matches 0 run scoreboard objectives setdisplay sidebar
execute if score #show_sidebar value matches 1..4 if score #player_count value matches ..0 run scoreboard objectives setdisplay sidebar
execute if score #show_sidebar value matches 1 if score #player_count value matches 1.. run scoreboard objectives setdisplay sidebar coins
execute if score #show_sidebar value matches 2 if score #player_count value matches 1.. run scoreboard objectives setdisplay sidebar points
execute if score #show_sidebar value matches 3 if score #player_count value matches 1.. run scoreboard objectives setdisplay sidebar alive
execute if score #show_sidebar value matches 4 if score #player_count value matches 1.. run scoreboard objectives setdisplay sidebar teamDisplay

#do again in a few seconds
scoreboard players set #sidebar_update value 1