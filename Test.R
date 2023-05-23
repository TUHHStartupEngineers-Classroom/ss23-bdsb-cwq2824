sqrt((2*1000*5)/0.25)
Q <- 200
D <- 1000
> K<- 5
> h<- 0.25
> Q = sqrt((D*2*K)/h)
> Q <- sqrt((D*2*K)/h)
mean(1:6)
die<- (1:6)
mean(die)

round(mean(die))
sample(die, size = 1)
round(3.62213)
dice <- sample(die, size =2, replace =FALSE)
dice
sum(dice)
sample(die, size = 1)
roll <- function()
{die <- 1:6
dice<- sample(die, size = 2, replce= TRUE)
sum(dice)}
roll
roll2 <- function(faces = 1:6, number_of_dice = 2)
{dice <- sample(x = faces, size = number_of_dice,replace = TRUE)
sum(dice)  
}
roll2()
roll2(faces = 1:4, number_of_dice = 4)
calc_EOQ <- function(D = 1000){
  K <- 5
  h <- 0.25
  Q <- sqrt(2*D*K/h)
  Q
}

calc_EOQ()

calc_EOQ(D=4000)
roll3 <- function(faces = 1:6, number_of_dice = 1){
  dice <- sample(x = faces, size = number_of_dice,
                 replace = TRUE,
                 prob = c(0.1,0.1,0.1,0.1,0.1,0.5))
  sum(dice)
}
result <- replicate(n = 100, expr = roll3(),simplify = TRUE)
hist(result)

pkgs_cran <- c(
  # File System
  "fs",         # working with the file system
  
  # Import
  "readxl",     # reading excel files
  "writexl",    # saving data as excel files
  
  # Tidy, Transform, & Visualize
  "tidyverse",  # dplyr, ggplot2, tibble, tidyr, readr, purrr, stringr, forcats
  "lubridate",  # working with dates and times
  
  # Other
  "devtools"    # used to install non-CRAN packages
)

install.packages("fs")       # Install single package
install.packages(pkgs_cran)  # Install many packages
install.packages("tidyverse")

tibble(
  x = 1:50,
  y = runif(50), 
  z = x + y^2,
  outcome = rnorm(50)
)
library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize medianGdpPercap within each continent within each year: by_year_continent
by_year_continent <- gapminder %>%
  group_by(continent, year) %>%
  summarize(medianGdpPercap = median(gdpPercap))

# Plot the change in medianGdpPercap in each continent over time
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap, color = continent)) +
  geom_point() +
  expand_limits(y = 0)
#Bar graph
concentraion_data <- (20, 30, 40,50)
Substances<- (Methane, Amonia)
barplot(concentraion_data,xlab="Substances",y=lab"Concentration", color= Substances)

# Load the ggplot2 package
library(ggplot2)

# Create sample data
data <- data.frame(Category = c("A", "B", "C", "D", "E"),
                   Value = c(10, 20, 30, 40, 50))

# Create a bar graph with ggplot2
ggplot(data, aes(x = Category, y = Value)) + 
  geom_bar(stat = "identity")

library(tidyverse)
diamonds2 %>%
  pivot_longer(cols = c("2008", "2009"),
               names_to ='year',
               values_to= 'price')%>%
  head(n=5)