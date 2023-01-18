pizza_id <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
pizza_menu <- c("Hawaiian", "Chicken BBQ", "Magarita", "Blue Cheese", "Pepperoni", 
                "Ham and Bacon", "Truffle", "Garlic Chicken Mushroom", "Shrimp", "Seafood")
drink_id <- c(1, 2, 3, 4)
drink_price <- c(20, 30, 30 , 150)
drink_menu <- c("Mineral Water", "Coke", "Diet Coke", "Beer")
pizza_size <- c("S", "M", "L", "XL")
pizza_price <- c(250, 300, 350)
pizza_menu <- data.frame (pizza_id, pizza_menu)
drink_all <- data.frame(drink_id, drink_menu, drink_price)
  
pizza_order <- function (){
  total_price <- 0
  re_ordered <- "Y"
  print("Welcome to Only Take-Away Pizza Shop")
  print("Please enter your name before order pizza")
  name <- readline("Enter your name: ")
  print(paste("Hello", name))
  print("-----------------------------")
  while (re_ordered == "Y") {
  print(pizza_menu)
  print("pizza price upon the size only")
  print("Size S = 250")
  print("Size M = 300")
  print("Size L = 350")
  print("What's pizza would you like to order ?")
  menu_ordered <- readline("pizza_id:")
  print("What's pizza size would you like to order ?")
  pizza_size_ordered <- readline("pizza size (S, M, L):")
  if (menu_ordered == 1) {
    print(paste("Your ordered pizza is",pizza_menu$pizza_menu[1], "pizza size:", pizza_size_ordered))
  } else if (menu_ordered == 2) {
    print(paste("Your ordered pizza is",pizza_menu$pizza_menu[2], "pizza size:", pizza_size_ordered))
  } else if (menu_ordered == 3) {
    print(paste("Your ordered pizza is",pizza_menu$pizza_menu[3], "pizza size:", pizza_size_ordered))
  } else if (menu_ordered == 4) {
    print(paste("Your ordered pizza is",pizza_menu$pizza_menu[4], "pizza size:", pizza_size_ordered))
  } else if (menu_ordered == 5) {
    print(paste("Your ordered pizza is",pizza_menu$pizza_menu[5], "pizza size:", pizza_size_ordered))
  } else if (menu_ordered == 6) {
    print(paste("Your ordered pizza is",pizza_menu$pizza_menu[6], "pizza size:", pizza_size_ordered))
  } else if (menu_ordered == 7) {
    print(paste("Your ordered pizza is",pizza_menu$pizza_menu[7], "pizza size:", pizza_size_ordered))
  } else if (menu_ordered == 8) {
    print(paste("Your ordered pizza is",pizza_menu$pizza_menu[8], "pizza size:", pizza_size_ordered))
  } else if (menu_ordered == 9) {
    print(paste("Your ordered pizza is",pizza_menu$pizza_menu[9], "pizza size:", pizza_size_ordered))
  } else if (menu_ordered == 10) {
    print(paste("Your ordered pizza is",pizza_menu$pizza_menu[10], "pizza size:", pizza_size_ordered))
  }
  if (pizza_size_ordered == "S") {
    print(paste("Total:", pizza_price[1]))
    total_price <-total_price +  pizza_price[1]
  } else if (pizza_size_ordered == "M") {
    print(paste("Total:", pizza_price[2]))
    total_price <-total_price +  pizza_price[2]
  } else if (pizza_size_ordered == "L") {
    print(paste("Total:", pizza_price[3]))
    total_price <-total_price +  pizza_price[3]
  }
  print ("Order more pizza ?")
  re_ordered <-readline("Y or N:")
  if (re_ordered == "N") {
  print("Do you want to order some drink ?")
  drink_accepted <- readline("Y or N:")
  if (drink_accepted == "Y") {
  print("-------------------------")
  print(drink_all)
  drink_ordered <- readline("What drink do you want?:")
  if (drink_ordered == 1) {
    print(paste("Your ordered drink is",drink_all$drink_menu[1], "Price", drink_all$drink_price[1]))
    total_price <-total_price +  drink_all$drink_price[1]
  } else if (drink_ordered == 2) {
    print(paste("Your ordered drink is",drink_all$drink_menu[2], "Price", drink_all$drink_price[2]))
    total_price <-total_price +  drink_all$drink_price[2]
  }else if (drink_ordered == 3) {
    print(paste("Your ordered drink is",drink_all$drink_menu[3], "Price", drink_all$drink_price[3]))
    total_price <-total_price +  drink_all$drink_price[3]
  }else if (drink_ordered == 4) {
    print(paste("Your ordered drink is",drink_all$drink_menu[4], "Price", drink_all$drink_price[4]))
    total_price <-total_price +  drink_all$drink_price[4]
        }
      }
    }
  }
  print(paste("Total price:", total_price))
  payment_method <- readline("Enter your payment method (Cash, Promtpay, Credit Card):")
  chatbot_rate <- readline("Please rate: 1-5, 1 is very bad, 5 is very good:")
  if (chatbot_rate < 3) {
    comment_chatbot <- readline("Please Enter your comment:")
    print("Your comment is receieved, Thanks")
  }
  print("Thank you, Please come again")
}


pizza_order()

