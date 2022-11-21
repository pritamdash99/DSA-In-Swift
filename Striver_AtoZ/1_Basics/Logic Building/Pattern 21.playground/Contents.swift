/*
 Example 1:

 Input: 5

 Output:
 
 ****
 *  *
 *  *
 ****
 
 Your Task:

 You don't need to input anything. Complete the function printTriangle() which takes  an integer n  as the input parameter and print the pattern.

 Constraints:

     1<= N <= 20

 */
import Foundation

func printSquare(_ n : Int){
    guard n > 1 else { return }
    for _ in 0..<n{
        print("*", terminator: "")
    }
    print("")
    for i in 0..<n-2{
        print("*", terminator: "")
        
        for _ in 0..<n-2{
            print(" ",terminator: "")
        }
        
        print("*",terminator: "")
        print("")
    }
    
    for _ in 0..<n{
        print("*", terminator: "")
    }
    print("")
    
}

printSquare(4)

/*
 Output :
 
 ****
 *  *
 *  *
 ****
 */


