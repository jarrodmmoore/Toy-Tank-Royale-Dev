scoreboard players set #sidebarCycle value 0

scoreboard players add #sidebarDisplay value 1
execute if score #sidebarDisplay value matches 2.. run scoreboard players set #sidebarDisplay value 0

#don't show the other display if we're doing coinmode 1
execute if score #opt_coinmode value matches 1 if score #opt_coinlimit value matches 11.. run scoreboard players set #sidebarDisplay value 0

#execute if score #sidebarDisplay value matches 0 run scoreboard objectives setdisplay sidebar coins
execute if score #sidebarDisplay value matches 0 run scoreboard players set #show_sidebar value 1
execute if score #sidebarDisplay value matches 0 run scoreboard players set #sidebar_update value 99
#execute if score #sidebarDisplay value matches 1 if score #player_count value matches 1.. run scoreboard objectives setdisplay sidebar teamDisplay
execute if score #sidebarDisplay value matches 1 if score #player_count value matches 1.. run scoreboard players set #show_sidebar value 4
execute if score #sidebarDisplay value matches 1 if score #player_count value matches 1.. run scoreboard players set #sidebar_update value 99