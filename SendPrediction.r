#Send prediction

# then you can load this function by copying and pasting it into R:
pml_write_files = function(x){
    n = length(x)
    for(i in 1:n){
        filename = paste0("problem_id_",i,".txt")
        write.table(x[i], file=filename, quote=FALSE, row.names=FALSE,
                    col.names=FALSE)
    }
}
# then create a folder where you want the files to be written. Set that to be
# your working directory and run:
pml_write_files(answers)