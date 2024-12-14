#apply proper body model
#tanks
execute if score #bodyModel value matches 0 if score #color1 value matches 1 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/body_green"}}]}
execute if score #bodyModel value matches 0 if score #color1 value matches 2 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/body_red"}}]}
execute if score #bodyModel value matches 0 if score #color1 value matches 3 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/body_blue"}}]}
execute if score #bodyModel value matches 0 if score #color1 value matches 4 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/body_yellow"}}]}
execute if score #bodyModel value matches 0 if score #color1 value matches 5 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/body_white"}}]}
execute if score #bodyModel value matches 0 if score #color1 value matches 6 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/body_pink"}}]}
execute if score #bodyModel value matches 0 if score #color1 value matches 7 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/body_cyan"}}]}
execute if score #bodyModel value matches 0 if score #color1 value matches 8 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/body_gray"}}]}
#turtles
execute if score #bodyModel value matches 1 if score #color1 value matches 1 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/turtles/body_green"}}]}
execute if score #bodyModel value matches 1 if score #color1 value matches 2 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/turtles/body_red"}}]}
execute if score #bodyModel value matches 1 if score #color1 value matches 3 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/turtles/body_blue"}}]}
execute if score #bodyModel value matches 1 if score #color1 value matches 4 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/turtles/body_yellow"}}]}
execute if score #bodyModel value matches 1 if score #color1 value matches 5 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/turtles/body_white"}}]}
execute if score #bodyModel value matches 1 if score #color1 value matches 6 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/turtles/body_pink"}}]}
execute if score #bodyModel value matches 1 if score #color1 value matches 7 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/turtles/body_cyan"}}]}
execute if score #bodyModel value matches 1 if score #color1 value matches 8 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/turtles/body_gray"}}]}
