# Define a function calculates the average of the min and max of a vector: extremes_avg
extremes_avg <- function (x) {
    mean <- (min(x) + max(x)) / 2
    return(mean)
}


# Apply extremes_avg() over temp using sapply()
sapply(temp, extremes_avg)

# Apply extremes_avg() over temp using lapply()
lapply(temp, extremes_avg)

