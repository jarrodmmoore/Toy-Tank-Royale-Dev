#invisible
execute if score #model_flash value matches ..1 run item replace entity @s armor.head with air

#tank model
execute if score #model_flash value matches 2.. unless score #bodyModel value matches 1 unless score #color_1 value matches 2.. run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/green_body"] 1
execute if score #model_flash value matches 2.. unless score #bodyModel value matches 1 if score #color_1 value matches 2 run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/red_body"] 1
execute if score #model_flash value matches 2.. unless score #bodyModel value matches 1 if score #color_1 value matches 3 run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/blue_body"] 1
execute if score #model_flash value matches 2.. unless score #bodyModel value matches 1 if score #color_1 value matches 4 run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/yellow_body"] 1
execute if score #model_flash value matches 2.. unless score #bodyModel value matches 1 if score #color_1 value matches 5 run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/white_body"] 1
execute if score #model_flash value matches 2.. unless score #bodyModel value matches 1 if score #color_1 value matches 6 run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/pink_body"] 1
execute if score #model_flash value matches 2.. unless score #bodyModel value matches 1 if score #color_1 value matches 7 run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/cyan_body"] 1
execute if score #model_flash value matches 2.. unless score #bodyModel value matches 1 if score #color_1 value matches 8 run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/gray_body"] 1

#turtle model
execute if score #model_flash value matches 2.. if score #bodyModel value matches 1 unless score #color_1 value matches 2.. run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/green_body"] 1
execute if score #model_flash value matches 2.. if score #bodyModel value matches 1 if score #color_1 value matches 2 run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/red_body"] 1
execute if score #model_flash value matches 2.. if score #bodyModel value matches 1 if score #color_1 value matches 3 run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/blue_body"] 1
execute if score #model_flash value matches 2.. if score #bodyModel value matches 1 if score #color_1 value matches 4 run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/yellow_body"] 1
execute if score #model_flash value matches 2.. if score #bodyModel value matches 1 if score #color_1 value matches 5 run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/white_body"] 1
execute if score #model_flash value matches 2.. if score #bodyModel value matches 1 if score #color_1 value matches 6 run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/pink_body"] 1
execute if score #model_flash value matches 2.. if score #bodyModel value matches 1 if score #color_1 value matches 7 run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/cyan_body"] 1
execute if score #model_flash value matches 2.. if score #bodyModel value matches 1 if score #color_1 value matches 8 run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/gray_body"] 1