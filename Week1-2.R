c(1, 2, 3)
c("Hello", "World!")
c(1, c(2, c(3)))

typeof(c(T, F, T))
typeof(7L)
mode(7)
mode(6L)

#Integers must be followed by an L
x <- 1L:100L
y <- as.numeric(1:100)
object.size(x)
object.size(y)

is.integer(7)
is.integer(7L)

is.double(pi)
is.numeric(1L)
is.integer(1L:10L)
is.integer(1:100)

#Implicit coercion
x <- c(T, T, F, F, F)
mean(x)
c(1L, 1.0, "one")
0 >= "0"
(0 == "0")
1 & TRUE & 5.0

#Explicit Coercion 
as.logical(sqrt(2))
as.character(5L)
as.integer("4")
as.integer("four")
as.numeric(FALSE)
as.double(10L)
as.complex(5.4)

typeof(NA)
typeof(NA+1)
typeof(NA_character_)

x <- c(-4, 0, NA, 33)
mean(x)
NA ^ 4
log(NA)
#removes NA from x
mean(x, na.rm = TRUE)
NA ^ 0
NA & FALSE
NA | TRUE
NA / Inf

is.na(x)
is.na(NA)
all(is.na(x))
any(is.na(x))

-5 /0

x <- c(-3:2)
attributes(x)
x

#creates a 2x3 matrix
attr(x, which = "dim") <- c(2, 3)
attributes(x)
x

#creates a 6x1 matrix
attr(x, which = "dim") <- c(6, 1)
x

#creates a 1x6 matrix
attr(x, which = "dim") <- c(1, 6)
x

a <- c(4L, 16, 0) #double
typeof(a)

b <- c(NaN, NA, -Inf) 
typeof(b)

b <- c(NA, TRUE, FALSE, "TRUE")
typeof(b)

b <- c(pi, NaN, NA)
typeof(b)

x <- NA
x <- c(1:5, NaN, NA, sqrt(3))
x <- c(1:5)
if ( any(is.na(x)) | any(is.nan(x)) ) {
  stop("Can't proceed NA or NaN present")
}

#Lists are generic vectors
b <- list("A", c(TRUE, FALSE), (1:4)/2, function (x) x ^2)

str(b)

y <- list (stocks = c("AAPL", "BA", "PFE", "C"),
           eps = c(1.1, .9, 2.3, 0.54),
           index = c("DJIA", "NASDAQ", "SP500"))


f <- function (x, y, z) {
  #combine words
  paste (x, " ", y, " ", z)
}

f(x = "fdafda", 
  y = 3, 
  z = 4)

formals(f)
body(f)
environment(f)

centers <- function(x) {
  c(mean(x), median(x))
}

centers(1:50)

#preferred method - use returns
standardize <- function(x) {
  stopifnot(length(x) > 1)
  x_stand <- (x- mean(x)) / sd(x)
  return(x_stand)
}

standardize(rnorm(20, 343, 2))

#arguments can be given values by position/name and partial name matching
z <- 1:30
mean(z, .3, FALSE)
mean(z, t = .3, na = FALSE)
mean(z, trim = 0)


#Scope
y <- 1
f <- function(x) {
  y <- x ^ 2
  return(y)
}

f(x = 3)
y


y <- 1
z <- 2

f <- function(x) {
  y <- x ^ 2
  g <- function () {
    return(c(x, y, z))
  }
  
  print(g())
}

f(x = 3)
c(y, z)


f <- function (a, b, x) {
  print(a)
  print(b ^ 2)
  0 * x
}
f (5, 6)