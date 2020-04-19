# Reference: Steph Locke, Data Manipulation in R
# https://data-flair.training/blogs/descriptive-statistics-in-r/
# https://bookdown.org/content/2880/module-1-introduction-to-r.html
# Sharon Machlis, Practical R in Mass Communication and Journalism
# https://github.com/smach/R4JournalismBook
# Learning goals: 
# 1. Data pipelines
# 2. How to pipe? The use of dot "."

# One assign at a time
iris
str(iris)#顯現結構
is_setosa#叫出setosa的資料（只有50筆）
is_setosa <- iris$Species=="setosa"
setosa <- iris[is_setosa, ]
setosa #叫出setosa的資料，在iris裡面
setosa_area <- setosa$Sepal.Length * setosa$Sepal.Width
avg_area <- mean(setosa_area)

# The all-in-one
avg_area <- mean(iris$Sepal.Length[iris$Species=="setosa"]*
                   iris$Sepal.Width[iris$Species=="setosa"])
avg_area #顯現avg_area

# %>% 
# ctl+shift+M
# <- 
# alt+- 
library(tidyverse)
library(magrittr)
#
# toupper(letters)
letters %>% toupper() %>% length()
#
head(iris)
iris %>% head() %>% nrow()
# 
iris_filtered <- iris %>% head()
iris_filtered
#
iris %>% head() -> iris_filtered3
iris_filtered3

# Jumbled functions
# Sometimes functions that we encounter do not put the key input
# as the first argument. 
letterz <- sub("s","z", letters)#sub替换
letterz
#
my_lm <- lm(Sepal.Width ~ Sepal.Length, iris)
#
letters %>% sub("s","z", .) -> letterz
letterz

# 
iris %>% lm(Sepal.Width~Sepal.Length, .) -> my_lm

