import Cocoa

/*
 Sort an array of 0s, 1s and 2s

 Problem Statement: Given an array consisting of only 0s, 1s and 2s. Write a program to in-place sort the array without using inbuilt sort functions. ( Expected: Single pass-O(N) and constant space)

 Example 1:

 Input: nums = [2,0,2,1,1,0]
 Output: [0,0,1,1,2,2]

 Input: nums = [2,0,1]
 Output: [0,1,2]

 Input: nums = [0]
 Input: nums = [0]
 
 Solution 2: Keeping count of values

 Intuition: Since in this case there are only 3 distinct values in the array so it’s easy to maintain the count of all, Like the count of 0, 1, and 2. This can be followed by overwriting the array based on the frequency(count) of the values.

 Approach:

     Take 3 variables to maintain the count of 0, 1 and 2.
     Travel the array once and increment the corresponding counting variables

 ( let’s consider count_0 = a, count_1 = b, count_2 = c )

     In 2nd traversal of array, we will now over write the first ‘a’ indices / positions in array with ’0’, the next ‘b’ with ‘1’ and the remaining ‘c’ with ‘2’.

 Time Complexity: O(N) + O(N)

 Space Complexity: O(1)

 Solution 3: 3-Pointer approach

 This problem is a variation of the popular Dutch National flag algorithm

 Intuition: In this approach, we will be using 3 pointers named low, mid, and high. We will be using these 3 pointers to move around the values. The primary goal here is to move 0s to the left and 2s to the right of the array and at the same time all the 1s shall be in the middle region of the array and hence the array will be sorted.

 Approach:

     Initialize the 3 pointers such that low and mid will point to 0th index and high pointer will point to last index

 int low = 0

 int mid = 0

 int high = n-1

     Now there will 3 different operations / steps based on the value of arr[mid] and will be repeated until mid <= high.


     arr[mid] == 0:
     swap(arr[low], arr[mid])
     low++, mid++


     arr[mid] == 1:
     mid++


     arr[mid] == 2:
     swap(arr[mid], arr[high])
     high–;

 The array formed after these steps will be a sorted array.
 */

func sortColors(_ nums: inout [Int]) {
    guard nums.count >= 1 && nums.count <= 300 else {
        return
    }
    
    for i in 0..<nums.count{
        guard nums[i] == 0 || nums[i] == 1 || nums[i] == 2 else{
            return
        }
    }
    
    var left = 0
    var mid = 0
    var right = nums.count - 1
    while mid <= right {
        switch nums[mid]
        {
        case 0 :
            nums.swapAt(left,mid)
            left += 1
            mid += 1
        case 1 :
            mid += 1
        case 2 :
            nums.swapAt(mid, right)
            right -= 1
        default :
            print("do nothing")
        }
    }
}

