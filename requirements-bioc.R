bioc_pkgs<-c(
'rhdf5',
'Rhdf5lib')

requireNamespace("BiocManager")
BiocManager::install(bioc_pkgs,ask=F)