/*
 Print numbers from N to 1 (space separated) without the help of loops.

 Example 1:

 Input:
 N = 10
 Output: 10 9 8 7 6 5 4 3 2 1


 Example 2:

 Input:
 N = 5
 Output: 5 4 3 2 1

 Your Task:
 This is a function problem. You only need to complete the function printNos() that takes N as parameter and prints number from N to 1 recursively. Don't print newline, it will be added by the driver code.

 Expected Time Complexity: O(N).
 Expected Auxiliary Space: O(N) (Recursive).


 Constraints:
 1 <= N <= 1000

 */
import Foundation

func printNos(_ i : Int, _ n : Int){
    if i<1 { return }
    print(i, terminator: " ")
    printNos(i-1,n)
}

printNos(3, 3)
/*
 O/p :
 3 2 1
 
 TC : O(n)
 SC : O(n) as previous qsn.
 */
