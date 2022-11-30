/*
 Check if a number is prime or not
 Problem Statement: Given a number, check whether it is prime or not. A prime number is a natural number that is only divisible by 1 and by itself.

 Examples 1 2 3 5 7 11 13 17 19 …

 Examples:

 Example 1:
 Input: N = 3
 Output: Prime
 Explanation: 3 is a prime number

 Example 2:
 Input: N = 26
 Output: Non-Prime
 Explanation: 26 is not prime
 */

import Foundation
/*
 Intuition : Going from 2 to n and finding a number that divides n will tell us that it is not prime, if no number exists then prime.
 Aproach :
 Traverse i from 2 to n-1 and check if n % i == 0, if yes then not prime else prime
 */
func checkPrime(_ n : Int) -> Bool{
    for i in 2..<n{
        if n % i == 0 {
            return false
        }
    }
    return true
}
print(checkPrime(13))
/*
 O/p : true
 TC - O(n) SC - O(1)
 */

