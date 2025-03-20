data merge block 0 150 0 {front_text:{messages:[{selector:"@p[tag=pl_self]"},'','','']},is_waxed:1b}

data modify entity @s CustomName set from block 0 150 0 front_text.messages[0]
data modify entity @s CustomNameVisible set value true

#while we're here: apply proper head model
#tanks
execute if score #headModel value matches 0 if score #color2 value matches 1 run item replace entity @s armor.head with green_dye[item_model="ttr/tanks/green_head"]
execute if score #headModel value matches 0 if score #color2 value matches 2 run item replace entity @s armor.head with green_dye[item_model="ttr/tanks/red_head"]
execute if score #headModel value matches 0 if score #color2 value matches 3 run item replace entity @s armor.head with green_dye[item_model="ttr/tanks/blue_head"]
execute if score #headModel value matches 0 if score #color2 value matches 4 run item replace entity @s armor.head with green_dye[item_model="ttr/tanks/yellow_head"]
execute if score #headModel value matches 0 if score #color2 value matches 5 run item replace entity @s armor.head with green_dye[item_model="ttr/tanks/white_head"]
execute if score #headModel value matches 0 if score #color2 value matches 6 run item replace entity @s armor.head with green_dye[item_model="ttr/tanks/pink_head"]
execute if score #headModel value matches 0 if score #color2 value matches 7 run item replace entity @s armor.head with green_dye[item_model="ttr/tanks/cyan_head"]
execute if score #headModel value matches 0 if score #color2 value matches 8 run item replace entity @s armor.head with green_dye[item_model="ttr/tanks/gray_head"]
#turtles
execute if score #headModel value matches 1 if score #color2 value matches 1 run item replace entity @s armor.head with green_dye[item_model="ttr/turtles/green_head"]
execute if score #headModel value matches 1 if score #color2 value matches 2 run item replace entity @s armor.head with green_dye[item_model="ttr/turtles/red_head"]
execute if score #headModel value matches 1 if score #color2 value matches 3 run item replace entity @s armor.head with green_dye[item_model="ttr/turtles/blue_head"]
execute if score #headModel value matches 1 if score #color2 value matches 4 run item replace entity @s armor.head with green_dye[item_model="ttr/turtles/yellow_head"]
execute if score #headModel value matches 1 if score #color2 value matches 5 run item replace entity @s armor.head with green_dye[item_model="ttr/turtles/white_head"]
execute if score #headModel value matches 1 if score #color2 value matches 6 run item replace entity @s armor.head with green_dye[item_model="ttr/turtles/pink_head"]
execute if score #headModel value matches 1 if score #color2 value matches 7 run item replace entity @s armor.head with green_dye[item_model="ttr/turtles/cyan_head"]
execute if score #headModel value matches 1 if score #color2 value matches 8 run item replace entity @s armor.head with green_dye[item_model="ttr/turtles/gray_head"]

#get team color
execute unless score #color2 value matches 1..8 run team join color_green @s
execute if score #color2 value matches 2 run team join color_red @s
execute if score #color2 value matches 3 run team join color_blue @s
execute if score #color2 value matches 4 run team join color_yellow @s
execute if score #color2 value matches 5 run team join color_white @s
execute if score #color2 value matches 6 run team join color_pink @s
execute if score #color2 value matches 7 run team join color_cyan @s
execute if score #color2 value matches 8 run team join color_gray @s