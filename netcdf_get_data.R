rm(list=ls())

#install netcdf4 if not alread installed
#you will need to install netcdf4 and hdf5 (not R packages)
install.packages("ncdf4")

#load ndcf4 package
library(ncdf4)

#open netcdf file
#file.choose() allows user to choose file from system
nc <- nc_open(file.choose())

#print metadata for netcdf file
print(nc)

#show the data attributes for the file
attributes(nc$var)

#show the names of the data attributes
attributes(nc$var)$names

#get the name of a specific var by index
attributes(nc$var)$names[1]

#get a variable's data
dat <- ncvar_get(nc, attributes(nc$var)$names[1])

