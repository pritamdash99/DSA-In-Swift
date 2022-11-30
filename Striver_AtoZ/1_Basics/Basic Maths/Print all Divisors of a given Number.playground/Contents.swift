/*
 Print all Divisors of a given Number
 
 Problem Statement: Given a number, print all the divisors of the number. A divisor is a number that gives remainder as zero when divided.

 Examples:

 Example 1:
 Input: n = 36
 Output: 1 2 3 4 6 9 12 18 36
 Explanation: All the divisors of 36 are printed.

 Example 2:
 Input: n = 97
 Output: 1 97
 Explanation: Since 97 is a prime number, only 1 and 97 are printed.
 */
import Foundation

/*
 Intuition:
 As we know the divisors of a number will definitely be lesser or equal to the number, all the numbers between 1 and the number, are the possible candidates for the divisors.

 Approach:
     This is the basic approach. As we know the possible candidates, we iterate upon all the candidates and check whether they divide the actual number.
     If it divides, then it is one of the divisors. Therfore, we print it.
     If it does not divide, then it is not a divisor. We do this for all the candidates.
 
 */
func printDivisors1(_ n : Int){
    print("Start for n =", n)
    for i in 1...n{
        if n % i == 0 {
            print(i,"", terminator: "")
        }
    }
    print("\nDone")
}

printDivisors1(36)

/*
 O/p :
 Start for n = 36
 1 2 3 4 6 9 12 18 36
 Done

 Time Complexity: O(n), because the loop has to run from 1 to n always.
 Space Complexity: O(1), we are not using any extra space.
 */
