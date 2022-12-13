/*
 509. Fibonacci Number

 The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,

 F(0) = 0, F(1) = 1
 F(n) = F(n - 1) + F(n - 2), for n > 1.

 Given n, calculate F(n).

 Example 1:

 Input: n = 2
 Output: 1
 Explanation: F(2) = F(1) + F(0) = 1 + 0 = 1.

 Example 2:

 Input: n = 3
 Output: 2
 Explanation: F(3) = F(2) + F(1) = 1 + 1 = 2.

 Example 3:

 Input: n = 4
 Output: 3
 Explanation: F(4) = F(3) + F(2) = 2 + 1 = 3.

 Constraints:

     0 <= n <= 30
 */
import Foundation

class Solution {
    func fib(_ n: Int) -> Int {
        guard n < 31 && n > -1 else { return 0 }
        if n <= 1{ return n }
        else{
            return fib(n-1) + fib(n-2)
        }
    }
    
    func fibIterative(_ n : Int) -> Int{
        var arr = Array(repeating: 0, count: n+1)
        arr[0] = 0
        arr[1] = 1
        for i in 2...n{
            arr[i] = arr[i-1] + arr[i-2]
        }
        return arr[n]
    }
}

let x = Solution()
print(x.fib(4)) // 3
//print(x.fib(30)) // 832040
print(x.fibIterative(10)) // 55
