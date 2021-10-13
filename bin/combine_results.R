#!/usr/bin/env Rscript

args <- commandArgs(trailingOnly = TRUE)
raw_data_fps <- args[seq(1, length(args))]

# load the fps and do.call rbind
result <- do.call(rbind, lapply(raw_data_fps, readRDS))
saveRDS(result, "result.rds")
