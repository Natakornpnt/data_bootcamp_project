
pcc <- function() {
  print("welcome to pao ying chub game")
  win <- 0
  lose <- 0
  draw <- 0
  round <- 0
  print("Please enter your name")
  name <- readline(":")
  print("Game's rules")
  print("1 = Paper")
  print("2 = Scissor")
  print("3 = Rock")
  replay <- "Y"
  while (replay == "Y") {
    round <- round + 1
  user_choice <- readline("Your turn:")
  bot_choice <- sample(1:3, 1)
    if (user_choice == 1 & bot_choice == 1){
      print("draw")
      draw <- draw + 1
  } else if (user_choice == 1 & bot_choice == 2) {
      print("lose")
      lose <- lose + 1
  } else if (user_choice == 1 & bot_choice == 3) {
      print("win")
      win <- win + 1
  } else if (user_choice == 2 & bot_choice == 1) {
      print("win")
      win <- win + 1
  } else if (user_choice == 2 & bot_choice == 2) {
      print("draw")
      draw <- draw + 1
  } else if (user_choice == 2 & bot_choice == 3) {
      print("lose")
      lose <- lose + 1
  } else if (user_choice == 3 & bot_choice == 1) {
      print("lose")
      lose <- lose + 1
  } else if (user_choice == 3 & bot_choice == 2) {
      print("win")
      win <- win + 1
  } else if (user_choice == 3 & bot_choice == 3) {
      print("draw")
      draw <- draw + 1
  }
  print("play again ?")
  print("Y or N")
  replay <- readline (":")
  if (replay == "N") {
    print(paste(name, "Result"))
    print(paste("win:", win))
    print(paste("lose:", lose))
    print(paste("draw:", draw))
    print(paste("total game play:", round))
  }
}
}

pcc()
