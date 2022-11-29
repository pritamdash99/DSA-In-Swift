/*
 Find GCD of two numbers

 Problem Statement: Find gcd of two numbers.

 Examples:

 Example 1:
 Input: num1 = 4, num2 = 8
 Output: 4
 Explanation: Since 4 is the greatest number which divides both num1 and num2.

 Example 2:
 Input: num1 = 3, num2 = 6
 Output: 3
 Explanation: Since 3 is the greatest number which divides both num1 and num2.
 
 */
import Foundation
/*
 Intuition: Simply traverse from 1 to min(a,b) and check for every number.
 
 Aproach : from 1 to min(a,b) iterate over each number and see if they divide a & b, store the maximum number that divides a,b and return it.
 */
func gcd1(_ a : Int, _ b : Int) -> Int {
    var ans = 0
    let n = min(a, b)
    for i in 1...n{
        if a % i == 0 && b % i == 0 {
            ans = i
        }
    }
    return ans
}
// TC - O(n) , SC - O(1)

//Testing
print(gcd1(3, 6)) // O/p = 3

