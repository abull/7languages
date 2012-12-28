//1. A Fibonacci sequence starts with two 1s. Each subsequent number is the sum of the two numbers that came before: 1, 1, 2, 3, 5, 8, 13, 21, and so on. Write a program to find the nth Fibonacci number. fib(1) is 1, and fib(4) is 3. As a bonus, solve the problem with recursion and with loops.

Fib := Object clone
Fib recursive := method(n, if(n <= 2, 1 , Fib recursive(n - 1) + Fib recursive(n - 2)))

Fib recursive(5) println
Fib recursive(6) println

Fib looping := method(n,
  k0 := 0
  k1 := 0
  k2 := 1
  for(i, 1, n,
    k0 = k1
    k1 = k2
    k2 = k0 + k1
  )
  k1
)

Fib looping(5) println
Fib looping(6) println

//2. How would you change / to return 0 if the denominator is zero?
Number old_divide := Number getSlot("/")
Number / := method(n, if(n == 0, 0, old_divide(n)))

4 / 2 println
2 / 2 println
2 / 0 println

//3. Write a program to add up all of the numbers in a two-dimensional array.
TwoDimensionalListAdd := method(list,
  n := 0
  list foreach(a, a foreach(k, n = n + k))
  n
)
TwoDimensionalListAdd(
  list(
    list(1,2,3),
    list(4,5,6),
    list(7,8,9)
  )
) println
//4. Add a slot called myAverage to a list that computes the average of all the numbers in a list. What happens if there are no numbers in a list? (Bonus: Raise an Io exception if any item in the list is not a number.)
List myAverage := method(
  n := 0
  i := 0
  self foreach(k,
    if(k type != Number type,
      Exception raise("Array must contain only numbers.")
    )
    n = n + k
    i = i + 1
  )
  n / i
)

list(1,2,3) myAverage println

list() myAverage println

try(
  list(1, "two", 3) myAverage
) catch(Exception,
 "Caught Exception" println
)

//5. Write a prototype for a two-dimensional list. The dim(x, y) method should allocate a list of y lists that are x elements long. set(x, y, value) should set a value, and get(x, y) should return that value.
Matrix := Object clone
Matrix dim := method(x,y,
  baseList := List clone
  for(i,1,y,
    baseList append(nil)
  )
  self listList := List clone
  for(i,1,x,
    self listList append(baseList clone)
  )
)
Matrix get := method(x,y,
  self listList at(x) at(y)
)

Matrix set := method(x,y,value,
  self listList at(x) atPut(y, value)
)

testMatrix := Matrix clone

testMatrix dim(2,3)
testMatrix listList println

testMatrix set(1,1, "foo")
testMatrix listList println

testMatrix set(0,0, "bar")
testMatrix get(0,0) println

//6. Bonus: Write a transpose method so that (new_matrix get(y, x)) == matrix get(x, y) on the original list.

Matrix transpose := method(
  listListOld := self listList
  len_x := self listList size
  len_y := self listList at(0) size
  self dim(len_y, len_x)
  for(i_x,0, len_x - 1,
    for(i_y,0, len_y - 1,
      self set(i_y, i_x, listListOld at(i_x) at(i_y))
    )
  )
)

transposeMatrix := Matrix clone
transposeMatrix dim(2,2)
transposeMatrix set(0,0,"0,0")
transposeMatrix set(0,1,"0,1")
transposeMatrix set(1,0,"1,0")
transposeMatrix set(1,1,"1,1")

transposeMatrix listList println
transposeMatrix transpose
transposeMatrix listList println

//7. Write the matrix to a file, and read a matrix from a file.


//8. Write a program that gives you ten tries to guess a random number from 1–100. If you would like, give a hint of “hotter” or “colder” after the first guess.

