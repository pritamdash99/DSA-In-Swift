/*
 Example 1:

 Input: 5

 Output:
 
    A
   ABA
  ABCBA
 ABCDCBA
 
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
        for _ in stride(from: n-1, to: i, by: -1){
            print(" ",terminator: "")
        }
        
        for j in 0...i{
            print(arr[j],terminator: "")
        }
        
        var j = i - 1
        while j >= 0{
            print(arr[j],terminator: "")
            j -= 1
        }
        print("")
    }
}

printTriangle(4)

/*
 Output :
 
   A
  ABA
 ABCBA
ABCDCBA


 */


