x <- c(T, F, TRUE, FALSE)
typeof(x)

y <- c("a", "few", "more", "slides")
typeof(y)

x <- c(T, 5, F, 0, 1)
y <- c("a", 1, T)
z <- c(3.0, 4L, 0L)

c(1, 0, 1, 1, 6)
c(c(3,4), c(10, TRUE))

c(pi)

x <- c(T, F, T, T)
y <- c(F, F, T, F)

!x
x | y
x || y
x & y
x && y
xor(x, y)

x <- c(4, 10, -5)
y <- c(0, 51, 9/5)
z <- c("four", "for", "4")

x > y
x != y
x == z
x %in% z

a <- c(0, -3, sqrt(75))
b <- c(1, 3, 2)
a + b
a ^ b
rnorm(n =3, mean = a, sd = b)

x <- c(2, 4, 6)
y <- c(1, 1, 1, 2, 2)
x > y

if (TRUE) {
  print("The condition must have been true!")
}

if (1 > 0) {
  print("Yes, 1 is greater than 0.")
}

x <- c(1, 2, 3, 4)
if (3 %in% 3) {
  print("Yes, 3 is in x.")
}

if (-6) {
  print("looks like if converts numeric to logical")
}

if(c(F, T, T)) {
  print("how many logical values can if handle?")
}

if(c(T, T, T)) {
  print("how many logical values can if handle?")
}

if (x %in% 3) {
  print("This works?")
}

if (3 %in% x) {
  print("This works?")
}


x <- c(-5, 0, 5, 10, 15)
any(x >= 5)
all(x >= 5)

z <- c(-4:-1, 1:3)
z
ifelse(test = z <0, yes = "neg", no = "pos")

x <- rnorm(n = 4, mean = 0, sd =1)
x
ifelse(test = abs(x) > 3, yes = "outlier", no = "no outlier")

x = 0
if (x < 0) {
  "negative"
} else if (x > 0) {
  "positive"
} else {
  "zero"
}

x <- -1
if (x < 0) {
  stop("Negative numbers not allowed!")
  x^2
}
x*3

x <- c(3, 9, 28)
stopifnot(any(x >= 0), all(x %% 3 == 0))
x*x

if (1 == "1") "coercion works" else "no coercion"
ifelse (5 > c(1, 10, 2), "hello", "olleh")

x <- c(2)
y <- c(3)

if ( x == 0 | y == 0) {
  stop("Zeros not allowed!")
} else if (xor(x < 0, y < 0)) {
  print("knits")
} else if (x / y > 0) {
  print("stink")
}


k = 0
for (i in c(2, 4, 6, 8)) {
  print(i ^ 2)
  k <- k + i ^ 2
}

for (i in c(2, 4, 6, 8)) {
  i ^ 2
}

for (i in c(1:10)) {
  print(i)
}

i <- 1
res <- rep(NA, 10)
res
while (i <= 10) {
  res[i] <- i ^ 2
  i <- i +1
}
res

i <- 1
res <- rep(NA, 10)
res
repeat {
  res[i] <- i ^ 2
  i <- i + 1
  if (i> 10) {break}
}
res

for (i in 1:10) {
  if (i %% 2 == 0) {next}
  
  print(paste("Number ", i, " is odd."))
  
  if (i %% 7 == 0) {break}
}

a <- c(4:7)
seq_along(a)

length(a)
seq_len(length(a))

b <- seq(4, 7)
c <- seq(4, 7, by = 2)
b
c

#Bad
a <- c()
for (i in seq_len(10)) {
  a <- c(a, i ^ 3)
}
print(a)

#faster
a <- numeric(10)
a
for (i in seq_along(a)) {
  a[i] <- i ^ 3
}
a

#even faster
a <- c(1:10) ^ 3
a

x <- c(3, 4, 12, 19, 23, 49, 100, 63, 70)
print(x ^ 2)

z <- c(-1, .5, 0, .5, 1)
for (i in seq_along(z)) {
  k <- 0
  while ( abs(cos(k) - z[i]) >= 0.001) {
    k <- k+1
  }
  print(paste(k, " is the smallest k for ", z[i]))
}



