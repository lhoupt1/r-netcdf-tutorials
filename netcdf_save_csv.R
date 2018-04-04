#clear memroy
rm(list=ls())

#load raster package
library(raster)

#read netcdf as a raster brick
nc.brick <- brick(file.choose())

#show dimensions of the raster brick
dim(nc.brick)

#read the first layer in the brick as a data frame
nc.df <- as.data.frame(nc.brick[[1]], xy=T)

#examine the data frame
head(nc.df)

#write the data frame as a csv
write.csv(nc.df, file.choose())

#read in the saved csv
test <- read.csv(file.choose())
