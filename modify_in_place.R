#!/bin/env Rscript
a <- c("The","quick","fox")

print(c("Original follows: ",a))

italicize_in_place <- function(x) {

    # Get the original name of the variable
    name <- deparse(substitute(x))

    # Assign italicized copy back to the original
    assign(name,paste0("_",x,"_"),envir=parent.frame())
}

italicize_in_place(a)

print(c("After italicization follows: ",a))
