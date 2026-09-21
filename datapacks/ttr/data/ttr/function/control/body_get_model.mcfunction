#apply proper body model
#tanks
execute if score #bodyModel value matches 0 if score #color1 value matches 1 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/tanks/body_green"]
execute if score #bodyModel value matches 0 if score #color1 value matches 2 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/tanks/body_red"]
execute if score #bodyModel value matches 0 if score #color1 value matches 3 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/tanks/body_blue"]
execute if score #bodyModel value matches 0 if score #color1 value matches 4 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/tanks/body_yellow"]
execute if score #bodyModel value matches 0 if score #color1 value matches 5 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/tanks/body_white"]
execute if score #bodyModel value matches 0 if score #color1 value matches 6 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/tanks/body_pink"]
execute if score #bodyModel value matches 0 if score #color1 value matches 7 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/tanks/body_cyan"]
execute if score #bodyModel value matches 0 if score #color1 value matches 8 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/tanks/body_gray"]
#turtles
execute if score #bodyModel value matches 1 if score #color1 value matches 1 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/turtles/body_green"]
execute if score #bodyModel value matches 1 if score #color1 value matches 2 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/turtles/body_red"]
execute if score #bodyModel value matches 1 if score #color1 value matches 3 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/turtles/body_blue"]
execute if score #bodyModel value matches 1 if score #color1 value matches 4 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/turtles/body_yellow"]
execute if score #bodyModel value matches 1 if score #color1 value matches 5 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/turtles/body_white"]
execute if score #bodyModel value matches 1 if score #color1 value matches 6 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/turtles/body_pink"]
execute if score #bodyModel value matches 1 if score #color1 value matches 7 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/turtles/body_cyan"]
execute if score #bodyModel value matches 1 if score #color1 value matches 8 run item replace entity @s container.0 with minecraft:green_dye[item_model="ttr/turtles/body_gray"]

#get team color
execute unless score #color1 value matches 1..8 run team join color_green @s
execute if score #color1 value matches 2 run team join color_red @s
execute if score #color1 value matches 3 run team join color_blue @s
execute if score #color1 value matches 4 run team join color_yellow @s
execute if score #color1 value matches 5 run team join color_white @s
execute if score #color1 value matches 6 run team join color_pink @s
execute if score #color1 value matches 7 run team join color_cyan @s
execute if score #color1 value matches 8 run team join color_gray @s