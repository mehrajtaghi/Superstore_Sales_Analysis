# task 1

library(tidyverse)
library(plotly)

data <- read.csv('~/Downloads/Superstore_data.csv')

# task 2

data %>% names()
names (data) <- data %>%  names() %>% str_replace_all(" ", "_")


# task 3 

data %>%  ggplot(aes(Sales, Profit)) + 
  geom_point()


# task 4
data %>%  ggplot(aes(Sales, Profit)) + 
  geom_point() +
  geom_smooth()

# task 5

p1 <- data %>%  ggplot(aes(Sales, Profit,
                     color = Segment,
                     size = Discount)) +
  geom_point()

p1 %>%  ggplotly()
# task 6

data %>%  ggplot (aes(Sales, Profit,
                      color = Region)) +
  geom_point() +
  geom_smooth() +
  facet_grid(Region~.) + 
  theme(legend.position = "none")
  

#task 7

p <- data %>%  ggplot(aes(Sales,
                          fill = Category)) +
  geom_histogram()

p %>%  ggplotly()

#task 8
p2 <- data %>% ggplot(aes(y = Profit, x = Category)) +
  geom_boxplot()
p2 %>%  ggplotly()

#task 9
p3 <- data %>% ggplot(aes(Quantity,
                    fill = Ship.Mode)) +
  geom_histogram() + facet_grid(Category~.)

p3 %>% ggplotly()

#task 10
data %>% ggplot(aes(y = Sales, x = Category)) +
  geom_violin()


#task 11
data %>% ggplot(aes(y = Sales, x = Category)) + geom_violin() +
  labs(title = "Shipping by product company")
