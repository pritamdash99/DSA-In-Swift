import Cocoa

/*
 Maximum Subarray
 
 Problem statement : Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
 A subarray is a contiguous part of an array.
 
 Example 1:

 Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
 Output: 6
 Explanation: [4,-1,2,1] has the largest sum = 6.

 Example 2:

 Input: nums = [1]
 Output: 1

 Example 3:

 Input: nums = [5,4,-1,7,8]
 Output: 23

Constraints:
1 <= nums.length <= 105
-104 <= nums[i] <= 104


 */

/*
 Solution 1: Naive Approach

 Approach: Using three for loops, we will get all possible subarrays in two loops and their sum in another loop, and then return the maximum of them.
 Time Complexity: O(N^3)- TLE

 Space Complexity: O(1)
 
 Solution 2: A better approach

 Approach :

 We can also do this problem using only two for loop, starting the function with ( max_sum ) variable which will have the final answer. We can get the sum of all possible subarrays in this way and then return the maximum so far.
 */
