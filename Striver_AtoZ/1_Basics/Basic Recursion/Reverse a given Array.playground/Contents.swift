/*
 Reverse a given Array

 Problem Statement: You are given an array. The task is to reverse the array and print it.

 Examples:

 Example 1:
 Input: N = 5, arr[] = {5,4,3,2,1}
 Output: {1,2,3,4,5}
 Explanation: Since the order of elements gets reversed the first element will occupy the fifth position, the second element occupies the fourth position and so on.

 Example 2:
 Input: N=6 arr[] = {10,20,30,40}
 Output: {40,30,20,10}
 Explanation: Since the order of elements gets reversed the first element will occupy the fifth position, the second element occupies the fourth position and so on.
 
 */
import Foundation
/*
 Approach: The recursive method has an approach almost similar to the iterative one. The approach has been broken down into some steps for simplicity.

     Create a function that takes an array ,start index and end index of the array as parameters.
     Swap the elements present  at start and end index,
     The portion of array left to be reversed is arr[start+1,end-1]. Make a recursive call to reverse the rest of array. While calling recursion pass start +1  and end – 1 as parameters for the shrinked array. Repeat step 2.
     Continue recursion as long as ‘start < end’ condition is satisfied. This is the base case for our recursion.
 */
class TwoPointer{
    func reverseArrayUsingRecursion(_ arr : [Int]){
        var arr = arr
        reverseArray(0,arr.count - 1, &arr)
        print(arr)
    }

    func reverseArray(_ l : Int, _ r : Int, _ arr : inout [Int]){
        //base condition
        if l < r {
            let temp = arr[l]
            arr[l] = arr[r]
            arr[r] = temp
            reverseArray(l+1,r-1, &arr)
        }
    }
}

var arr = [5,4,3,2,1]
let x = TwoPointer()
x.reverseArrayUsingRecursion(arr)
// [1, 2, 3, 4, 5]


/*
 Using only 1 pointer i.
 Here use i and array.count - i - 1
 base condition would be i > array.count / 2
 */
class OnePointer{
    func reverseArrayUsingRecursion(_ arr : [Int]){
        var arr = arr
        reverseArray(0,&arr)
        print(arr)
    }

    func reverseArray(_ i : Int, _ arr : inout [Int]){
        let n = arr.count
        //base condition
        if i > n / 2{
            return
        }
        
        //swap
        let temp = arr[i]
        arr[i] = arr[n-i-1]
        arr[n-i-1] = temp
        
        reverseArray(i+1, &arr)
    }
}

let y = OnePointer()
y.reverseArrayUsingRecursion(arr)
// [1, 2, 3, 4, 5]
