/*
 Print GFG n times without the loop.

 Example:

 Input:
 5
 Output:
 GFG GFG GFG GFG GFG

 Your Task:
 This is a function problem. You only need to complete the function printGfg() that takes N as parameter and prints N times GFG recursively. Don't print newline, it will be added by the driver code.

 Expected Time Complexity: O(N).
 Expected Auxiliary Space: O(N) (Recursive).

 Constraint:
 1<=N<=1000

 */
import Foundation

func printGfg(_ i : Int, _ n : Int){
    //base condition = if i > n return
    if i > n {
        return
    }
    print("GFG")
    //recursion call
    printGfg(i+1, n)
}

printGfg(1, 5)
/*
 O/p :
 GFG
 GFG
 GFG
 GFG
 GFG
 
 TC : O(n)
 SC : O(n) here SC will be the stack space for non value functions(The ones waiting for a return value until the base condition is reached)
 */


