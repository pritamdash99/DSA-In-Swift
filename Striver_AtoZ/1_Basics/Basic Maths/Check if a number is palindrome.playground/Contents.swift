/*
 Check if a number is Palindrome or Not

 Problem Statement:  Given a number check if it is a palindrome.

 An integer is considered a palindrome when it reads the same backward as forward.

 Examples:

 Example 1:
 Input: N = 123
 Output: Not Palindrome Number
 Explanation: 123 read backwards is 321.Since these are two different numbers 123 is not a palindrome.

 Example 2:
 Input: N =  121
 Output: Palindrome Number
 Explanation: 121 read backwards as 121.Since these are two same numbers 121 is a palindrome.
 */
import Foundation

class Solution {
    /*
     Aproach :
     Find the reverse of the input number, if they are same then palindrome else not palindrome.
     */
    func isPalindrome(_ x: Int) -> Bool {
        var currentNumber = x
        var newNumber = 0
        var remainder = 0
        var negativeSign = 1
        
        if currentNumber < 0 {
            negativeSign = -1
            currentNumber *= negativeSign
        }
        
        while currentNumber != 0{
            remainder = currentNumber % 10
            currentNumber /= 10
            newNumber = newNumber * 10 + remainder
        }
        
        guard newNumber >= Int32.min && newNumber <= Int32.max else { return false }
        return newNumber == x
        
    }
}

let x = Solution()
print(x.isPalindrome(-11111)) // false
print(x.isPalindrome(1111)) // true
print(x.isPalindrome(123321))
