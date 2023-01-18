### Library
library(tidyverse)
library(glue)
library(ggeasy)
library(patchwork)
library(ggthemes)

#data.frame diamonds
data("diamonds")


## check data.frame ofdiamonds
head(diamonds)
sum(is.na(diamonds))


############ For loop
####### First plot

for (i in 1:4) {
  small_diamonds <- sample_n(diamonds, 10000)
  
  lm_diamonds <- lm(price ~ carat, data =small_diamonds)
  
  lm_diamonds_R = round(summary(lm_diamonds)$r.squared,3)
  
  lm_diamonds_intercept <- round(lm_diamonds$coefficients["(Intercept)"],3)
  
  lm_diamonds_carat <- round(lm_diamonds$coefficients["carat"],3)
  
  ### First plot diamonds data-set
  small_plot <- ggplot(small_diamonds, aes(carat, price))+
    geom_point(pch = 16, alpha = 0.7) +
    geom_smooth(method = "lm", col = "salmon") + 
    geom_text(x = 3, y = 45000,  label = glue("R-squared = {lm_diamonds_R}"), cex =3) +
    geom_text(x =3, y = 40000, label = glue("y = {lm_diamonds_intercept} + {lm_diamonds_carat}x" 
                                               ),cex = 3) +
    xlim(-0.2,5.2) + ylim(-2000,50000) +
    labs(#title = "Relationship between carat and price",
         x = "carat",
         y = "price (USD)",
         #caption = "Source: Diamonds from ggplot2 package",
         family ="Serif", size = 18) +
    theme_minimal() +
    #ggeasy::easy_center_title() +
    theme(plot.title = element_text(size = 20)) 
  assign(paste("plot",i, sep = "_"), small_plot)
  i = i + 1
}

### using patchwork library to combine all ggplot
plot_all <- (plot_1 + plot_2) / (plot_3 + plot_4)


## Adding main title, caption and arrange main title position
plot_all + plot_annotation(title = "Relationship between carat and price",
                           caption = "Source: Diamonds from ggplot2 package",
                           theme = theme(plot.title = element_text(size = 18, hjust = 0.5)))

### Second Plot
# clarity = measurement of how clear the diamond is
# I1 (worst), SI2, SI1, VS2, VS1, VVS2, VVS1, IF (best)
## select only top 3 (VVS2, VVS1, IF)

clarity_filter <- diamonds %>%
                    filter(clarity == c("VVS2", "VVS1", "IF"))

clarity_plot <- ggplot(clarity_filter, aes(clarity, fill = cut))
clarity_plot1 <- clarity_plot + geom_bar() + labs(title = "Count number of diamonds of top 3 clarity by cut") + 
                 ggeasy::easy_center_title()

clarity_plot2 <- clarity_plot + geom_bar(position = "fill") + labs(title = "Compared number of diamonds of top 3 clarity by cut as % ") +
                 ggeasy::easy_center_title()
                                                                               

(clarity_plot1 / clarity_plot2) + plot_annotation(caption = "source: diamonds data.frame from ggplot2")   

## Third Plot

### boxplot of cut in each color using facet wrap
head(diamonds)

## filter only top 4 diamond color (D, E, F, G)
color_filter <- diamonds %>%
                filter(color == c("D", "E", "F", "G"))

ggplot(color_filter, aes(cut, carat, fill = "salmon")) + geom_boxplot() +  facet_wrap(~ color, ncol = 2) + 
        labs(title = "Boxplot of cut and carat using color face wrap", caption = "source: diamonds data.frame from ggplot2") + 
        ggeasy::easy_center_title() +
        theme(legend.position="none")


### Library nycflight13 and flights df
library(nycflights13)

#data.frame flights
data("flights")


## check head and column name of flights
head(flights)
tibble(flights)
str(flights)

### Fourth Plot
#Trend lines of average flights in each month
flights %>%
  group_by(month) %>%
  summarize(n = n()) %>%
  rename( count_flight = n) %>%
  head(12) %>%
  ggplot(aes(month, count_flight)) + geom_line(size = 1.5, col = "mediumspringgreen") + 
  scale_x_continuous(limits = c(1, 12), breaks = seq(1, 12, by = 1))+ theme_dark()


### Fifth Plot
air <- airlines 
air <- air %>%
  rename(short_name = carrier)

### Flights in summer 2013 (June to August, 6-8)
summer_flights <- flights %>%
  filter(year == 2013, between(month, 6, 8)) %>%
  count(carrier) %>%
  arrange(n) %>%
  rename(count_flights = n)

summer_flights
summer_flights$carrier<-factor(summer_flights$carrier, levels = summer_flights$carrier)

ggplot(summer_flights, aes(count_flights, carrier)) + geom_col(fill = "lightsteelblue3") + theme_gray() +
  labs(title = "Plot of flight numbers in each carrier in summer 2013", 
       caption = "Source: flights data.frame from nycflights13") + ggeasy::easy_center_title() 


## Sixth Plot
head(flights)

DEC_des <- flights %>%
  filter(year == 2013, month == 12) %>%
  count(dest) %>%
  arrange(desc(n)) %>%
  rename(count_destination = n)

top10_DEC_des <-DEC_des[1:10,]

## color df for easy input in ggplot
ten_color <- c("cadetblue3", "salmon", "antiquewhite1", "aliceblue", "darkseagreen2", "gray26", "lemonchiffon2", "lightcyan2", "lightpink1", "palegreen1" )

ggplot(top10_DEC_des, aes(count_destination, dest)) + geom_col(fill = ten_color) +coord_flip() + theme_minimal() +
  labs(title = "Plot of number of top 10 destinations in December 2013", 
       caption = "Source: flights data.frame from nycflights13") + ggeasy::easy_center_title()
