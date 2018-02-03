#Notes and further resources
#       hdf5 can be used to optimizing reading/writing from disk in R
#       The rhdf5 tutorial: http://www.bioconductor.org/packages/release/bioc/vignettes/rhdf5/inst/doc/rhdf5.pdf
#       The HDF group has information on HDF5 in general: http://www.hdfgroup.org/HDF5/



source("http://bioconductor.org/biocLite.R")
biocLite("rhdf5")

library(rhdf5)
# my addition: delete the file, if it already exists
if (file.exists("example.h5")) {
        file.remove("example.h5")
}

created = h5createFile("example.h5")
created
created = h5createGroup("example.h5", "foo")
created = h5createGroup("example.h5", "baa")
created = h5createGroup("example.h5", "foo/foobaa")
h5ls("example.h5")