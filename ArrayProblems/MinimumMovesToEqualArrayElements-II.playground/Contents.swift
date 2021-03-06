import Cocoa

/*
 Problem Statement :
 Given an integer array nums of size n, return the minimum number of moves required to make all array elements equal.

 In one move, you can increment or decrement an element of the array by 1.

 Test cases are designed so that the answer will fit in a 32-bit integer.

  

 Example 1:

 Input: nums = [1,2,3]
 Output: 2
 Explanation:
 Only two moves are needed (remember each move increments or decrements one element):
 [1,2,3]  =>  [2,2,3]  =>  [2,2,2]

 Example 2:

 Input: nums = [1,10,2,9]
 Output: 16

  

 Constraints:

     n == nums.length
     1 <= nums.length <= 10^5
     -10^9 <= nums[i] <= 10^9

Youtube link : https://www.youtube.com/watch?v=Wo168YDPwzk
 */
func minMoves2(_ nums: [Int]) -> Int {
        guard nums.count >= 1 && nums.count <= 100000 else {
            return 0
        }
        let sorted = nums.sorted()
        var start = 0
        var end = sorted.count - 1
        var count = 0
        while start<end {
            count += sorted[end] - sorted[start]
            start += 1
            end -= 1
        }
        return count
}
print(minMoves2([1,10,2,9]))
/*
 Output:
 16
 
 TC : O(nlogn) + O(n)
 SC = O(n)
 */
