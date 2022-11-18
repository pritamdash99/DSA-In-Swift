/*
 Example 1:

 Input: 5

 Output:
 
 1
 2 3
 4 5 6
 7 8 9 10
 11 12 13 14 15

 Your Task:

 You don't need to input anything. Complete the function printTriangle() which takes  an integer n  as the input parameter and print the pattern.

 Constraints:

     1<= N <= 20

 */
import Foundation

func printTriangle(_ n : Int){
    var a = 1
    for i in 0..<n{
        for _ in 0...i{
            print(a,"",terminator: "")
            a += 1
        }
        print("")
    }
}

printTriangle(5)

/*
 Output :
 
 1
 2 3
 4 5 6
 7 8 9 10
 11 12 13 14 15


 */

