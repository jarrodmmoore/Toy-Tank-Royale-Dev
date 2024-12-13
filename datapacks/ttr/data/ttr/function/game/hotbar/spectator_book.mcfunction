#new book
execute unless score #opt_gamemode value matches 2..8 run function ttr:game/hotbar/gamemode_book_variation/1
execute if score #opt_gamemode value matches 2 run function ttr:game/hotbar/gamemode_book_variation/2
execute if score #opt_gamemode value matches 3 run function ttr:game/hotbar/gamemode_book_variation/3
execute if score #opt_gamemode value matches 4 run function ttr:game/hotbar/gamemode_book_variation/4
execute if score #opt_gamemode value matches 5 run function ttr:game/hotbar/gamemode_book_variation/5
execute if score #opt_gamemode value matches 6 run function ttr:game/hotbar/gamemode_book_variation/6
execute if score #opt_gamemode value matches 7 run function ttr:game/hotbar/gamemode_book_variation/7
execute if score #opt_gamemode value matches 8 run function ttr:game/hotbar/gamemode_book_variation/8