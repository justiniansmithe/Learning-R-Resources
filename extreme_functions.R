# Define a function calculates the average of the min and max of a vector: extremes_avg
extremes_avg <- function (x) {
    mean <- (min(x) + max(x)) / 2
    return(mean)
}
# Create a function that returns min and max of a vector: extremes
extremes <- function(x) {
    min_max <- c(min(x), max(x))
    return(min_max)
}
# Create a function that returns all values below zero: below_zero
below_zero <- function(x) {
    below_zero_vector <- x[x<0]
    return(below_zero_vector)
}
# Apply extremes_avg() over temp using sapply()
sapply(temp, extremes_avg)

# Apply extremes_avg() over temp using lapply()
lapply(temp, extremes_avg)

