/*
 Example 1:

 Input: 5

 Output:
 
 A
 BB
 CCC
 DDDD
 EEEEE
 
 Your Task:

 You don't need to input anything. Complete the function printTriangle() which takes  an integer n  as the input parameter and print the pattern.

 Constraints:

     1<= N <= 20

 */
import Foundation

func printTriangle(_ n : Int){
    let sentance = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let arr = Array(sentance)
    for i in 0..<n{
        for _ in 0...i{
            print(arr[i],"",terminator: "")
        }
        print("")
    }
}

printTriangle(5)

/*
 Output :
 
 A
 B B
 C C C
 D D D D
 E E E E E

 */


