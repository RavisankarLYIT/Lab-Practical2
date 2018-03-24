# Read NI Postal code data set
postcodes_data <- read.csv('NIPostcodes.csv', header = TRUE)
# set column names of the data frame , stringsAsFactors = FALSE
colnames(postcodes_data) <- c("Organisation Name", "Sub - building Name", "Building Name", "Number", "Primary Thorfare", "Alt Thorfare", "Secondary Thorfare", "Locality", "Townland", "Town", "County", "Postcode", "x-coordinates", "y-coordinates", "identifier")
# Structure of data set
str(postcodes_data)
# Head of the data
# First 10 rows of the data set
head(postcodes_data, 100)
# total number
nrow(postcodes_data)
# mean of rows with missing values
mean(!complete.cases(postcodes_data))
# convert missing values (Blanks) as NA
postcodes_data[postcodes_data == ''] <- NA
# sum of missing values
missing_data <- my_data[!complete.cases(postcodes_data),]
str(!complete.cases(postcodes_data))
sum(is.na(missing_data))
