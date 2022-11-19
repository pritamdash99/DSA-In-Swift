/*
 Example 1:

 Input: 5

 Output:
 
 E
 E D
 E D C
 E D C B
 E D C B A
 
 Your Task:

 You don't need to input anything. Complete the function printTriangle() which takes  an integer n  as the input parameter and print the pattern.

 Constraints:

     1<= N <= 20

 */
import Foundation

func printTriangle(_ n : Int){
    let sentance = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let arr = Array(sentance)
    for i in 1...n{
        for j in 1...i{
            print(arr[n-j],"",terminator:"")
        }
        print("")
    }
}

printTriangle(5)

/*
 Output :
 
 E
 E D
 E D C
 E D C B
 E D C B A


 */


