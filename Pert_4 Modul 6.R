library(dslabs)
data(murders)

##mutate
murders <- mutate(murders, rate = total / population *10^5)


##filter
filter(murders, rate <= 0.71)
filter(murders, rate <= 3.3)

filter(murders, region == "South", rate <= 5, total > 100)
filter(murders, region == "South", rate <= 5, total > 300)


##select
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)

new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 2.2)


##operator pipe
new_df_2 <- murders %>% 
  select(state, region, rate) %>% 
  filter(region == "South")


16 %>% sqrt() %>% sqrt()

library(dslabs)
data("heights")


##menyimpulkan data
s <- heights %>%
  filter(sex == "Female") %>%
  summarize(average = mean(height), standard_deviation = sd(height))
s


murders %>%
  group_by(region) %>%  ##mengelompokkan data
  summarize(average = mean(population))

heights %>%
  group_by(sex) %>%  ##mengelompokkan data
  summarize(average = mean(height))


murders %>% 
  arrange(desc(population), region) %>%
  head()

murders %>% 
  arrange(region, desc(population)) %>%
  top_n(6)

murders %>% 
  arrange(region, desc(population)) 
























