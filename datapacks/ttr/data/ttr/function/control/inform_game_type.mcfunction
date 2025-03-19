#classic io (coin battle)
execute unless score #force_turtles value matches 1 if score #opt_gamemode value matches 1 run tellraw @s ["",{text:"\n \uE001 "},{translate:"ttr.game_type.classic_io",bold:true},{text:" \uE001 \n\n"},{translate:"ttr.game_type.description.classic_io",bold:false}]
execute if score #force_turtles value matches 1 if score #opt_gamemode value matches 1 run tellraw @s ["",{text:"\n \uE001 "},{translate:"ttr.game_type.classic_io",bold:true},{text:" \uE001 \n\n"},{translate:"ttr.game_type.description.classic_io.turtle",bold:false}]
execute if score #opt_gamemode value matches 1 if score #opt_coinlimit value matches ..10 run tellraw @s ["",{text:"\n"},{translate:"ttr.game_type.notice.no_win_condition",italic:true,color:"aqua"}]
execute if score #opt_gamemode value matches 1 run tellraw @s ["",{text:" "}]

#keep the crown
execute unless score #force_turtles value matches 1 if score #opt_gamemode value matches 2 run tellraw @s ["",{text:"\n \uE001 "},{translate:"ttr.game_type.keep_the_crown",bold:true},{text:" \uE001 \n\n"},{translate:"ttr.game_type.description.keep_the_crown",bold:false}]
execute if score #force_turtles value matches 1 if score #opt_gamemode value matches 2 run tellraw @s ["",{text:"\n \uE001 "},{translate:"ttr.game_type.keep_the_crown",bold:true},{text:" \uE001 \n\n"},{translate:"ttr.game_type.description.keep_the_crown.turtle",bold:false}]
execute if score #opt_gamemode value matches 2 if score #opt_keeplimit value matches ..0 run tellraw @s ["",{text:"\n"},{translate:"ttr.game_type.notice.no_win_condition",italic:true,color:"aqua"}]
execute if score #opt_gamemode value matches 2 run tellraw @s ["",{text:" "}]

#first to x
execute unless score #force_turtles value matches 1 if score #opt_gamemode value matches 3 run tellraw @s ["",{text:"\n \uE001 "},{translate:"ttr.game_type.first_to_x",bold:true,with:[{score:{name:"#opt_scorelimit",objective:"value"}}]},{text:" \uE001 \n\n"},{translate:"ttr.game_type.description.first_to_x",bold:false}]
execute if score #force_turtles value matches 1 if score #opt_gamemode value matches 3 run tellraw @s ["",{text:"\n \uE001 "},{translate:"ttr.game_type.first_to_x",bold:true,with:[{score:{name:"#opt_scorelimit",objective:"value"}}]},{text:" \uE001 \n\n"},{translate:"ttr.game_type.description.first_to_x.turtle",bold:false}]
execute if score #opt_gamemode value matches 3 if score #opt_scorelimit value matches ..0 run tellraw @s ["",{text:"\n"},{translate:"ttr.game_type.notice.no_win_condition",italic:true,color:"aqua"}]
execute if score #opt_gamemode value matches 3 run tellraw @s ["",{text:" "}]

#elimination
execute unless score #force_turtles value matches 1 if score #opt_gamemode value matches 4 run tellraw @s ["",{text:"\n \uE001 "},{translate:"ttr.game_type.elimination",bold:true},{text:" \uE001 \n\n"},{translate:"ttr.game_type.description.elimination",bold:false}]
execute if score #force_turtles value matches 1 if score #opt_gamemode value matches 4 run tellraw @s ["",{text:"\n \uE001 "},{translate:"ttr.game_type.elimination",bold:true},{text:" \uE001 \n\n"},{translate:"ttr.game_type.description.elimination.turtle",bold:false}]
execute if score #opt_gamemode value matches 4 run tellraw @s ["",{text:" "}]


#team io (coin battle)
execute unless score #force_turtles value matches 1 if score #opt_gamemode value matches 5 run tellraw @s ["",{text:"\n \uE001 "},{translate:"ttr.game_type.team_io",bold:true},{text:" \uE001 \n\n"},{translate:"ttr.game_type.description.team_io",bold:false}]
execute if score #force_turtles value matches 1 if score #opt_gamemode value matches 5 run tellraw @s ["",{text:"\n \uE001 "},{translate:"ttr.game_type.team_io",bold:true},{text:" \uE001 \n\n"},{translate:"ttr.game_type.description.team_io.turtle",bold:false}]
execute if score #opt_gamemode value matches 5 if score #opt_coinlimit value matches ..10 run tellraw @s ["",{text:"\n"},{translate:"ttr.game_type.notice.no_win_condition",italic:true,color:"aqua"}]
execute if score #opt_gamemode value matches 5 run tellraw @s ["",{text:" "}]

#capture the flag
execute if score #opt_gamemode value matches 6 run tellraw @s ["",{text:"\n \uE001 "},{translate:"ttr.game_type.capture_the_flag",bold:true},{text:" \uE001 \n\n"},{translate:"ttr.game_type.description.capture_the_flag",bold:false}]
execute if score #opt_gamemode value matches 6 if score #opt_capturelimit value matches ..0 run tellraw @s ["",{text:"\n"},{translate:"ttr.game_type.notice.no_win_condition",italic:true,color:"aqua"}]
execute if score #opt_gamemode value matches 6 run tellraw @s ["",{text:" "}]

#infection
execute unless score #force_turtles value matches 1 if score #opt_gamemode value matches 7 run tellraw @s ["",{text:"\n \uE001 "},{translate:"ttr.game_type.infection",bold:true},{text:" \uE001 \n\n"},{translate:"ttr.game_type.description.infection",bold:false}]
execute if score #force_turtles value matches 1 if score #opt_gamemode value matches 7 run tellraw @s ["",{text:"\n \uE001 "},{translate:"ttr.game_type.infection",bold:true},{text:" \uE001 \n\n"},{translate:"ttr.game_type.description.infection.turtle",bold:false}]
execute if score #opt_gamemode value matches 7 run tellraw @s ["",{text:" "}]

#team elimination
execute if score #opt_gamemode value matches 8 run tellraw @s ["",{text:"\n \uE001 "},{translate:"ttr.game_type.team_elimination",bold:true},{text:" \uE001 \n\n"},{translate:"ttr.game_type.description.team_elimination",bold:false}]
execute if score #opt_gamemode value matches 8 run tellraw @s ["",{text:" "}]
