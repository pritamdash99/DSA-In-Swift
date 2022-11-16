/*
 Example 1:

 Input: 5

 Output:
 1
 2 2
 3 3 3
 4 4 4 4
 5 5 5 5 5

 Your Task:

 You don't need to input anything. Complete the function printTriangle() which takes  an integer n  as the input parameter and print the pattern.

 Constraints:

     1<= N <= 20

 */
import Foundation

func printTriangle(_ n : Int){
    for i in 1 ... n{
        for _ in 1 ... i{
            print(i," ", terminator: "")
        }
        print("")
    }
}

printTriangle(5)

/*
 Output :
 1
 2  2
 3  3  3
 4  4  4  4
 5  5  5  5  5

 */

