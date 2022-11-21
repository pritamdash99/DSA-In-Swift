/*
 Example 1:

 Input: 5

 Output:
 
 *        *
 **      **
 ***    ***
 ****  ****
 **********
 ****  ****
 ***    ***
 **      **
 *        *
 
 Your Task:

 You don't need to input anything. Complete the function printTriangle() which takes  an integer n  as the input parameter and print the pattern.

 Constraints:

     1<= N <= 20

 */
import Foundation

func printTriangle(_ n : Int){
    for i in 0..<n{
        for _ in 0...i{
            print("*", terminator: "")
        }
        
        var j = 2*(n - i - 1)
        
        while j > 0{
            print(" ", terminator: "")
            j -= 1
        }
        
        for _ in 0...i{
            print("*", terminator: "")
        }
        
        print("")
    }
    
    for i in 1..<n{
        var j = n - i
        while j > 0{
            print("*", terminator:"")
            j -= 1
        }
        
        for _ in 0..<2*i{
            print(" ", terminator: "")
        }
        
        j = n - i
        
        while j > 0{
            print("*", terminator:"")
            j -= 1
        }
        print("")
    }
    

}

printTriangle(5)

/*
 Output :
 
 *        *
 **      **
 ***    ***
 ****  ****
 **********
 ****  ****
 ***    ***
 **      **
 *        *

 */


