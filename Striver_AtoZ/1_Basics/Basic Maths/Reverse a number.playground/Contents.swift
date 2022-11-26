/*
 Reverse a number.

 Problem Statement: Given a number N reverse the number and print it.

 Examples:

 Example 1:
 Input: N = 123
 Output: 321
 Explanation: The reverse of 123 is 321

 Example 2:
 Input: N = 234
 Output: 432
 Explanation: The reverse of 234 is 432
 */
import Foundation
import Darwin
/*
 Approach :
 To get the last digit of a number use %10 and store the remainder.
 To reduce the number of digits use /10 and store the result
 To add another digit at the end of a number use *10 to current number and +digit to the new number(after *10)
 
 */

func reverseNumber(_ x : Int) -> Int{
    var negativeSign = 1
    var currentNumber = x
    var remainder = 0
    var newNumber = 0
    
    if currentNumber < 0 {
        negativeSign = -1
        currentNumber *= negativeSign
    }
    
    while currentNumber != 0 {
        remainder = currentNumber % 10
        currentNumber /= 10
        newNumber = newNumber * 10 + remainder
    }
    newNumber *= negativeSign
    
    guard newNumber < Int32.max && newNumber > Int32.min else {
        return 0
    }
    return newNumber
}

print(reverseNumber(1234)) // 4321
print(reverseNumber(74836782728281918)) // 0
/*
 TC : O(n) , SC : O(1)
 */
