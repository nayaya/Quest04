# A function that accepts a csv file containing
# comma-separated values in each line as parameter, 
# and return a multi-dimentional array with each line 
# entries as child array.

# Importing of the PP class/library
require 'pp'

# Function definition
def my_csv_parser(file, sep = ",")
     file_data  = File.read(file).split
     file_data.each_with_index do |ar, i|
          file_data[i] = ar.split(sep)
     end
end

# Sample File
sample_file = "data.csv"

# A call to the function to display the array
pp my_csv_parser(sample_file, ";")