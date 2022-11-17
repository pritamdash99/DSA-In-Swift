/*
 Example 1:

 Input: 5

 Output:
 *
 * *
 * * *
 * * * *
 * * * * *
 * * * *
 * * *
 * *
 *

 Your Task:

 You don't need to input anything. Complete the function printTriangle() which takes  an integer n  as the input parameter and print the pattern.

 Constraints:

     1<= N <= 20

 */
import Foundation

func printTriangle(_ n : Int){
    for i in 1...n{
        for _ in 1...i{
            print("* ", terminator: "")
        }
        print("")
    }
    
    for i in stride(from: n-1, to: 0, by: -1) {
        for _ in 1...i{
            print("* ", terminator: "")
        }
        print("")
    }
}

printTriangle(5)

/*
 Output :
 
 *
 * *
 * * *
 * * * *
 * * * * *
 * * * *
 * * *
 * *
 *

 */

