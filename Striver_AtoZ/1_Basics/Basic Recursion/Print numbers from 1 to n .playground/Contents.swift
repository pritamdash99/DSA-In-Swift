/*
 Print numbers from 1 to N without the help of loops.

 Example 1:

 Input:
 N = 10
 Output: 1 2 3 4 5 6 7 8 9 10


 Example 2:

 Input:
 N = 5
 Output: 1 2 3 4 5

 Your Task:
 This is a function problem. You only need to complete the function printNos() that takes N as parameter and prints number from 1 to N recursively. Don't print newline, it will be added by the driver code.


 Expected Time Complexity: O(N).
 Expected Auxiliary Space: O(N) (Recursive).


 Constraints:
 1 <= N <= 1000

 */
import Foundation

func printNos(_ i : Int, _ n : Int){
    if i>n { return }
    print(i, terminator: " ")
    printNos(i+1,n)
}

printNos(1, 10)
/*
 O/p :
 1 2 3 4 5 6 7 8 9 10 
 
 TC : O(n)
 SC : O(n) as previous qsn.
 */
