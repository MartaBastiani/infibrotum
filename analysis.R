library(dplyr)
library(Seurat)
# library(patchwork)

#---------------------------#  Inflammation dataset  #---------------------------#
inf.umis_data <- Read10X(data.dir = "He_2022-Inflammation/SCP738/expression/umis", gene.column = 1,)
infl_data <- CreateSeuratObject(counts = inf.umis_data, project = "He et al.", min.cells = 3, min.features = 200)
metadata <- read.csv("metadata/metaData.txt", sep = "\t")

#---------------------------# Cancer Dataset #---------------------------#
counts <- readRDS("Luo_2022-Cancer/GSE210347_counts.Rds") # 6 x 855271 sparse Matrix of class "dgCMatrix"
