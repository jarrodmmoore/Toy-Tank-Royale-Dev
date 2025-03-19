tag @s add first_person
tag @s remove overhead
execute unless score #force_turtles value matches 1 run tellraw @s ["",{text:"\uE009 "},{translate:"ttr.camera.enable_first_person",color:"#88EE88"}]
execute if score #force_turtles value matches 1 run tellraw @s ["",{text:"\uE034 "},{translate:"ttr.camera.enable_first_person",color:"#88EE88"}]
scoreboard players reset @s firstPerson