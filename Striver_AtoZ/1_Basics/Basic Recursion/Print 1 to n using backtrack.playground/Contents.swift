/*
 Print 1 to n without sending i + 1 as recursion, use backtrack.
 Backtrack is basically used by calling the recursion in the middle of the code. So that when the last function in the stack space returns value on reaching the base condition, the code bellow the recursive call gets executed 1st from the very top of the stack space.
 */
import Foundation

func print1ToNUsingBacktrack( _ i : Int, _ n : Int){
    //base condition
    if i < 1 {
        return
    }
    //recursion call
    print1ToNUsingBacktrack(i - 1, n)
    
    //this code gets executed once the last function in the stack space returns value on reaching the base condition i.e here for n = 4 , the top most function's returned value would be 1. So 1 gets printed first.
    print(i, terminator: " ")
}

print1ToNUsingBacktrack(4, 4)
/*
 O/p : 1 2 3 4
 */

/*
 Print n to 1 without sending i - 1 as recursion, use backtrack.
 */

func printNto1UsingBacktrack( _ i : Int, _ n : Int){
    //base condition
    if i > n{
        return
    }
    printNto1UsingBacktrack(i + 1, n)
    print(i, terminator: " ")
}
print("")
printNto1UsingBacktrack(1, 4)
/*
 O/p : 4 3 2 1 
 */
