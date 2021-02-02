#Homework 1

#1.
#a.
a1=c(5,"7",9,12,"15")
a2=c(5,7,9,12,15)
typeof(a1)
typeof(a2)

#b. 
a1[1]+3
#This does not work because we are trying to perform arithmetic on a non-numeric argument of "7".

a2[1]+3
#This works because 5 is numeric and can be added to 3


#c.
a1==a2
#This gives boolean equality of the values of each vector element.

identical(a1,a2)
#This tests if each value is exactly identical with types included.

all.equal(a1,a2)
#This gives a report of the differences between the two vectors.


#d.
a3=as.numeric(a1)
typeof(a3)
#double
a3==a2
identical(a3,a2)
all.equal(a3,a2)
#Because a1 was converted from a chr vector to double, all the functions return true.

a2[3] = "9"
typeof(a2)
a2[1]+3
#This changes the value of the third position in a2 to '9' and converts the vector to a chr vector.



#3.
#a.
(1:10)*2
?seq
seq(2,20, by = 2)
seq(1,200, by = 15)
seq(1,200,by = 11.5)

#b.
rep(1:10, times=5)
#replicates 1 through 10 5 times total.

rep(1:10,each=5)
#replicates 1 through 10 giving each number 5 times before going to the next consecutive number.


rep(1:10, lenght.out=50)
#gives 1 through 10 once. length.out gives the desired length of the sequence.

#3.
#a.
matrix1 <- matrix(seq(1,20,by=2), nrow = 2, ncol = 5)

#b.
matrix2 <- rbind(matrix1, c(2,4,6,8,10))

#c.
colSums(matrix2)

#d.
rowSums(matrix2)

#e.
matrix2*rep(1,5)

#f.
is.matrix(rowSums(matrix2))
is.vector(rowSums(matrix2))
#part d gives a vector.
is.matrix(matrix2*rep(1,5))
is.vector(matrix2*rep(1,5))
#part e gives a matrix.