/*
 Sum of first N Natural Numbers
 
 There are many ways to do this problem :
 1. Iteratively using for loop
 2. Using formula
 3. Using Recursively ( Parameterized and Functional )
 */
import Foundation
//1. Using For loop

func findSumTillN( _ n : Int)-> Int{
    var sum = 0
    for x in 1...n{
        sum += x
    }
    return sum
}

print(findSumTillN(3)) // 6

//2. Using Formula

func findSumTillN2( _ n : Int)-> Int{
    return (n * (n + 1))/2
}

print(findSumTillN2(3)) // 6

//3.a. Using Recursion - Parameterised

func findSumTillN3( _ n : Int, _ sum : Int){
    if n == 0 {
        print(sum)
        return
    }
    findSumTillN3(n-1, sum + n)
}
findSumTillN3(3, 0) // 6

//3.b. Using Recursion - Functional

func findSumTillN4( _ n : Int) -> Int{
    if n == 0 {
        return 0
    }
    return n + findSumTillN4(n-1)
}
print(findSumTillN4(3)) // 6
