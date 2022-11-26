import Foundation
/*
 Count digits in a number
 
 Problem Statement: Given an integer N , write program to count number of digits in N.
 
 Examples:

 Example 1:
 Input: N = 12345
 Output: 5
 Explanation: N has 5 digits

 Example 2:
 Input: N = 8394
 Output: 4
 Explanation: N has 4 digits

 */

/*
 Approach 1 :
 Use  while n != 0 to convert n = n/ 10. For every iteration increment the counter.
 TC : O(n) , SC : O(1)
 */
func countDigits1(_ n : Int) -> Int {
    var n = n, counter = 0
    while n != 0 {
        n = n/10
        counter += 1
    }
    return counter
}
print(countDigits1(12345)) // 5

