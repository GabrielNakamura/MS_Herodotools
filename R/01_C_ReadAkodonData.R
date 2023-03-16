
# libraries and dependencies ----------------------------------------------

library(here)
library(Herodotools)
library(terra)
library(ape)

# importing Akodon data ---------------------------------------------------

comm_coords_Akodon <- read.table(here("data", "Table_Akodon_coords_pa.txt"),
                                 header = TRUE)
traits_Akodon <- read.table(here("data", "size_akodon.txt"), header = TRUE)
tree_Akodon <- read.nexus(here("data", "tree_akodon.nexus"))


# processing data ---------------------------------------------------------

coords_Akodon <- comm_coords_Akodon[, c(1, 2)]
comm_Akodon <- comm_coords_Akodon[, 3:ncol(comm_coords_Akodon)]


raster::plot(coords_Akodon)
