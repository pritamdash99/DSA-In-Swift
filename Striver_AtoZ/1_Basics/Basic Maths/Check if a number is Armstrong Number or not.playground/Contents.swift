/*
 Check if a number is Armstrong Number or not
 Problem Statement: Given a number, check if it is Armstrong Number or Not.

 Examples:

 Example 1:
 Input:153
 Output: Yes, it is an Armstrong Number
 Explanation: 1^3 + 5^3 + 3^3 = 153

 Input:170
 Output: No, it is not an Armstrong Number
 Explanation: 1^3 + 7^3 + 0^3 != 170
 
 What are Armstrong Numbers?

 Armstrong Numbers are the numbers having the sum of digits raised to power no. of digits is equal to a given number. Examples- 0, 1, 153, 370, 371, 407, and 1634 are some of the Armstrong Numbers.
 
 */
import Foundation
/*
 Aproach :
 1. Keep a sum varaible at 0
 2. Count the number of digits in that number and store it.
 3. Loop from last digit to first and for every iteration take the last digit and make sum = sum + (lastdigit^count)
 4. check if the final sum = the initial input number. If yes then return true else return false.
 */
func armstrongNumber(_ n : Int) -> Bool{
    var sum = 0
    var m = n
    let count = Int(ceil(log10(Double(n))))
    while m != 0 {
        let rem = m % 10
        sum += power(rem, count)
        m /= 10
    }
    if sum == n {
        return true
    }else{
        return false
    }
}

func power(_ n : Int, _ pow : Int) -> Int{
    var x = 1
    for _ in 0..<3{
        x *= n
    }
    return x
}

print(armstrongNumber(153))
