/*
 Example 1:

 Input: 5

 Output:
 
 ABCDE
 ABCD
 ABC
 AB
 A

 Your Task:

 You don't need to input anything. Complete the function printTriangle() which takes  an integer n  as the input parameter and print the pattern.

 Constraints:

     1<= N <= 20

 */
import Foundation

func printTriangle(_ n : Int){
    let sentance = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let arr = Array(sentance)
    for i in stride(from: n, to: 0, by: -1){
        for j in 0..<i{
            print(arr[j],"",terminator: "")
        }
        print("")
    }
}

printTriangle(5)

/*
 Output :
 
 A B C D E
 A B C D
 A B C
 A B
 A 

 */


