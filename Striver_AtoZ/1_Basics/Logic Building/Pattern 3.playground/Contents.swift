/*
 Example 1:

 Input: 5

 Output:
 1
 1 2
 1 2 3
 1 2 3 4
 1 2 3 4 5

  

 Your Task:

 You don't need to input anything. Complete the function printTriangle() which takes  an integer n  as the input parameter and print the pattern.

 Constraints:

     1<= N <= 20

 */
import Foundation

func printTriangle(_ n : Int){
    for i in 1 ... n{
        for j in 1 ... i{
            print(j," ", terminator: "")
        }
        print("")
    }
}

printTriangle(5)

/*
 Output :
 1
 1  2
 1  2  3
 1  2  3  4
 1  2  3  4  5

 */

