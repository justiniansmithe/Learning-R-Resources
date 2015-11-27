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

#Puts the selecting elements into a list
select_element_list <- function(vector, index) {
    element <- lapply(vector, function(x) {x[index]})
    return(element)
}

#Select super function
select_el <- function(x, index){
    x[index]
}
# Call the select_el() function twice on split_low: names and years
names <- lapply(split_low, select_el, index = 1)
years <- lapply(split_low, select_el, index = 2)

lapply(split_low, function(x) {  
    if ((x[2]) <= 1705) {
        print(paste(x[1], "rocks it old schhol from", x[2], "what an OG!"))
        return(x)
    } else {
        print(paste("I'm not that into new-school math rock but this brotha", x[1], "is pretty alright."))
    }
 })


