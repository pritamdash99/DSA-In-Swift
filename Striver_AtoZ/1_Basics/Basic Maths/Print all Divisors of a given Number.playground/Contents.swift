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

/*
 
 2nd Intuition :
 If a number has a divisor other than 1 then the quotient of that divisor is also a divisor. So the first divisor would always fall inside the range of [ 1 to square root of the number]. So instead of travelling from 1 to n we can travel 1 to sqrt(n).
 Aproach :
 Find the sqrt of n and store in m
 iterate i from 1 to m
 if i is a divisor of n then print it.
 if i is a perfect square then don't print the quotient else print n / i (quotient)
 The quotients are the numbers that are on the other side of the root. So, its okay if we stop traversing at root.
 Here the order of the print will not be same.
 Incase you need to print in a increasing order then store i in array and sort it and then print it.
 */

func printDivisorOptimal(_ n : Int){
    let m = Int(sqrt(Double(n)))
    print("Start for n =", n)
    for i in 1...m{
        if n % i == 0 {
            print(i,"", terminator: "")
            if i != n/i {
                print(n/i,"", terminator: "")
            }
        }
    }
    print("\nDone")
}

printDivisorOptimal(40)
/*
 O/p :
 Start for n = 40
 1 40 2 20 4 10 5 8
 Done
 
 Time Complexity: O(sqrt(n)), because everytime the loop runs only sqrt(n) times.
 Space Complexity: O(1), we are not using any extra space.
 */
