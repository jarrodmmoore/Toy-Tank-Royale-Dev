tag @s add first_person
tag @s add overhead
execute unless score #force_turtles value matches 1 run tellraw @s ["",{"text":"\uE009 "},{"translate":"ttr.camera.enable_overhead","color":"#88EE88"}]
execute if score #force_turtles value matches 1 run tellraw @s ["",{"text":"\uE034 "},{"translate":"ttr.camera.enable_overhead","color":"#88EE88"}]
scoreboard players reset @s overHead