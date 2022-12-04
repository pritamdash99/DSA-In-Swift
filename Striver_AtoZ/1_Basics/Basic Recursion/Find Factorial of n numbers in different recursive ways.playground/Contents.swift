/*
 Find the factorial of n numbers in parametrised as well as functional recursion.
 */
import Foundation

//parametrised way
//func findFactorial1(_ n :Int, _ product : Int){
//    if n < 1 {
//        print(product)
//    }
//    findFactorial1(n-1,product * n)
//}
//findFactorial1(5, 1)

//functional way

func findFactorial2(_ n :Int) -> Int{
    if n == 1 {
        return 1
    }
    return n * findFactorial2(n-1)
}
print(findFactorial2(5)) // 120
