library(knitr)

# List of .Rmd files to convert
files <- list.files(pattern="\\.Rmd$")

# Function to convert .Rmd to .md
knit_to_md <- function(input_file) {
  # Create the output file name by replacing the .Rmd extension with .md
  output_file <- sub("\\.Rmd$", ".md", input_file)

  # Use knitr to knit the file
  knit(input = input_file, output = output_file, quiet = TRUE)
}

# Apply the function to all files
sapply(files, knit_to_md)

