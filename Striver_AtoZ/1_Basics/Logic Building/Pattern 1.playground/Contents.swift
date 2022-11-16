/*
 Input: 5

 Output:
 * * * * *
 * * * * *
 * * * * *
 * * * * *
 * * * * *

  

 Your Task:

 You don't need to input anything. Complete the function printSquare() which takes  an integer n  as the input parameter and print the pattern.

 Constraints:

     1<= N <= 20

 */
import Foundation

func printSquare(_ n : Int){
    for i in 0..<n{
        for j in 0..<n{
            print("* ", terminator: "")
        }
        print("")
    }
}

printSquare(5)
/*
 Output :
 * * * * *
 * * * * *
 * * * * *
 * * * * *
 * * * * * 
 */
