#invisible
execute if score #model_flash value matches ..1 run item replace entity @s armor.head with air
execute if score #model_flash value matches ..1 run data modify entity @s CustomNameVisible set value false

#show name again when visible
execute if score #model_flash value matches 2.. run data modify entity @s CustomNameVisible set value true

#tank model
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 unless score #color_2 value matches 2.. run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/green_head"] 1
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 if score #color_2 value matches 2 run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/red_head"] 1
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 if score #color_2 value matches 3 run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/blue_head"] 1
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 if score #color_2 value matches 4 run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/yellow_head"] 1
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 if score #color_2 value matches 5 run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/white_head"] 1
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 if score #color_2 value matches 6 run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/pink_head"] 1
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 if score #color_2 value matches 7 run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/cyan_head"] 1
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 if score #color_2 value matches 8 run item replace entity @s armor.head with yellow_dye[item_model="ttr/tanks/gray_head"] 1

#turtle model
execute if score #model_flash value matches 2.. if score #headModel value matches 1 unless score #color_2 value matches 2.. run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/green_head"] 1
execute if score #model_flash value matches 2.. if score #headModel value matches 1 if score #color_2 value matches 2 run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/red_head"] 1
execute if score #model_flash value matches 2.. if score #headModel value matches 1 if score #color_2 value matches 3 run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/blue_head"] 1
execute if score #model_flash value matches 2.. if score #headModel value matches 1 if score #color_2 value matches 4 run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/yellow_head"] 1
execute if score #model_flash value matches 2.. if score #headModel value matches 1 if score #color_2 value matches 5 run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/white_head"] 1
execute if score #model_flash value matches 2.. if score #headModel value matches 1 if score #color_2 value matches 6 run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/pink_head"] 1
execute if score #model_flash value matches 2.. if score #headModel value matches 1 if score #color_2 value matches 7 run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/cyan_head"] 1
execute if score #model_flash value matches 2.. if score #headModel value matches 1 if score #color_2 value matches 8 run item replace entity @s armor.head with yellow_dye[item_model="ttr/turtles/gray_head"] 1