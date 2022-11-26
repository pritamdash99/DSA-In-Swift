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

/*
 Approach 2 :
 Convert the num into a string and return the size of the string.
 TC : O(n) SC : O(1)
 */
func countDigits2(_ n : Int) -> Int {
    let n = String(n)
    return n.count
}
print(countDigits2(12345)) // 5

/*
 Approach 3 :
 Use logarithm base 10 to count the number of digits. As the number of digits in an integer = the upper bound of log10(n).

 Example :

 n = 12345
 log10(12345) = 4.091
 Integral part of 4.091 is 4 and 4 + 1 =  5 which is also the number of digits in 12345
 
 TC : O(1) SC : O(1)
 */
func countDigits3(_ n : Int) -> Int {
    let n = floor(log10(Double(n)))
    return Int(n) + 1
}
print(countDigits3(12345)) // 5
