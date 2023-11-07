# List of packages
packages <- c("psych", "psychTools", "corrplot", "nFactors", "GPArotation", "semPlot",
              "gplots", "RColorBrewer", "diceR", "readxl", "cluster", "factoextra",
              "caret", "dplyr", "openxlsx", "clustertend", "clusterRepro", "fpc",
              "DiscriMiner", "rpart", "crossdes", "ibd", "dfidx",
              "pricesensitivitymeter", "ggplot2", "multcomp", "gridExtra", "PropCIs",
              "gpairs", "coefplot", "car")

# Install devtools if not already installed
if (!requireNamespace("devtools", quietly = TRUE)) {
    install.packages("devtools", repos = "https://cran.r-project.org")
}

library(devtools)

# Install packages if they are not installed yet
for (package in packages) {
    if (!require(package, character.only = TRUE)) {
        install.packages(package, repos = "https://cran.r-project.org")
    }
}

# Check for the specific version of mlogit and install if it does not match
if (!require(mlogit) || packageVersion("mlogit") != "1.0-1") {
    install_version("mlogit", version="1.0-1", repos="https://cran.r-project.org")
}

