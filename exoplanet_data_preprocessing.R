# Load the libraries

library(tidyverse)
library(dplyr)
library(tidyr)
library(readr)
library(tibble)
library(stats)
library(ggplot2)
library(mltools)
library(data.table)
library(caret)
library(aod)
library(ROCR)
library(InformationValue)
library(corrplot)
library(gridExtra)
library(GGally)
library(stats)
library(xgboost)
library(stringr)
library(caret)

# Set the seed
set.seed(1002476)

# Load the CSV
raw_data <- read.csv("cumulative.csv", header = TRUE)

# View header
head(raw_data, n=10)

# Get rid of the uneeded columns
dropped_columns = subset(raw_data, select = -c(rowid, kepid, kepoi_name, kepler_name, koi_pdisposition, koi_score, koi_tce_delivname))
head(dropped_columns, n=10)

colnames(dropped_columns)

# Time to clean up the NA values. Use the dplyr package to write a function
# to remove columns and rows with NA values. 
not_any_na <- function(x) all(!is.na(x))
no_na_columns <- dropped_columns %>% select_if(not_any_na)

# Now get the remaining column names so we can tell dplyr to keep them 
colnames(no_na_columns)
data <- no_na_columns[complete.cases(no_na_columns[ ,c("koi_disposition", "koi_fpflag_nt", "koi_fpflag_ss", "koi_fpflag_co", "koi_fpflag_ec", "koi_period", "koi_time0bk", "koi_duration", "ra", "dec" )]), ]

# Determine the structure of data set
str(data)

# Examine the statistical distribution
summary(data)

# Write the cleaned data to a new CSV
write.csv(data, file = "cleaned_data.csv")

