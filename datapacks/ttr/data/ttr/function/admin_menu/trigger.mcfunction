execute at @s run playsound block.note_block.cow_bell master @s ~ ~ ~ 1 2

execute if score #require_operator value matches 0 run function ttr:admin_menu/_open
execute if score #require_operator value matches 1 run tellraw @s ["",{text:"[",color:"gold",bold:true},{translate:"ttr.menu.click_to_access_options",bold:true,color:"gold",click_event:{action:"suggest_command",command:"/function ttr:admin_menu/_open"},hover_event:{action:"show_text",value:[{text:"/function ttr:admin_menu/_open",color:"yellow"}]}},{text:"]",color:"gold",bold:true},{text:" "},{translate:"ttr.menu.requires_operator",color:"gray"}]

scoreboard players reset @s gameOptions