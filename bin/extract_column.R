#!/usr/bin/env Rscript

library(ondisc)
args <- commandArgs(trailingOnly = TRUE)

i <- as.integer(args[1])
odm_fp <- args[2]

odm <- read_odm(odm_fp)
x <- as.numeric(odm[[,i]]) 

# vector <- readRDS(odm_fp)
# x <- vector + i

saveRDS(x, file = "column.rds")