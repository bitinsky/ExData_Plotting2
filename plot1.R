if (!file.exists("exdata_data_NEI_data.zip")) {
  try(download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip", destfile = "exdata_data_NEI_data.zip"),silent=TRUE)
}
if (!file.exists("Source_Classification_Code.rds")) {
  try(unzip("exdata_data_NEI_data.zip"),silent=TRUE)
}


## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")