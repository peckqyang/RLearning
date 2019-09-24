#Creating a vector
vector(mode = "integer", length = 3)
-10:-3
x <- list(a = -100:100,
          b = list(small = letters, big = LETTERS),
          cars_data = cars)
str(x)
x[2]

#Data structures
# attributes attach metadata
# attr() retrieves/modifies attributes
# attributes() retrieves/sets them en masse

x <- 1:4
attributes(x)

attr(x=x, which = "names") <- c("a", "b", "c", "d")
attributes(x)

a <- 1:4
names(a) <- c("a", "b", "c", "d")
attributes(a)
a

z <- 1:9
z