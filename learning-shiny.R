# Get started with shiny!

# Packages used in this tutorial
pkgs <- c("shiny", "png", "grid")
# install.packages(pkgs) # install the packages
lapply(pkgs, library, character.only = TRUE)

# Run the app!
runApp("rentSplit")
runApp("hi")