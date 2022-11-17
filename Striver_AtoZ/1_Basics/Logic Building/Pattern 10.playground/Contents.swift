/*
 Example 1:

 Input: 5

 Output:
 1
 0 1
 1 0 1
 0 1 0 1
 1 0 1 0 1

 Your Task:

 You don't need to input anything. Complete the function printTriangle() which takes  an integer n  as the input parameter and print the pattern.

 Constraints:

     1<= N <= 20

 */
import Foundation

func printTriangle(_ n : Int){
    for i in 0..<n{
        if i%2 == 1{
            for j in 0...i{
                print(j%2," ", terminator: "")
            }
            print("")
        }else{
            for j in 0...i{
                print((j+1)%2," ", terminator: "")
            }
            print("")
        }
    }
}

printTriangle(5)

/*
 Output :
 
 1
 0  1
 1  0  1
 0  1  0  1
 1  0  1  0  1

 */

