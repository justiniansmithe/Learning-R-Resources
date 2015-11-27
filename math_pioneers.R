pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

# Write function select_first()
select_first <- function(vector) {
    return(vector[[1]])
}

# Apply select_first() over split_low: names
names <- lapply(split_low, select_first)

# Write function select_second()
select_second <- function(vector) {
    return(vector[[2]])
}

# Apply select_second() over split_low: years
years <- lapply(split_low, select_second)

#Even sexier
names <- lapply(split_low, function(x) {x[1]})
years <- lapply(split_low, function(x) {x[2]})

#Even more sexier and generic
select_el <- function(vector, index) {
    element <- lapply(vector, function(x) {x[index]})
    return(element)
}
# Call the select_el() function twice on split_low: names and years
names <- select_el(split_low, 1)
years <- select_el(split_low, 2)


