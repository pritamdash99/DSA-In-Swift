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
 Solution : 3 Optimal Solution: Kadane’s Algorithm

 Intuition: Basically this problem can be done in linear time complexity with Kadane’s algorithm along with that will also get the subarray which is giving the largest positive-sum.

 Approach:

 -> We will have the following variables in the beginning :

 msf – max so far, meh – max end here, start – to get the starting index of ans’s subarray, end – to get the ending index of ans’s subarray.

 -> Traverse the array starting with adding the ith element with max_end_here(meh) , now we will check that adding the element gives greater value than max_so_far(msf) , if yes then we will update our msf and also update the starting and ending index .

 for(int i=0;i<nums.size();i++){
     meh+=nums[i];

     if(meh>msf){ msf=meh; start=s; end=i; }

     if(meh<0){meh=0; s=i+1;}
 }

 ->Now in this step, we will print the answer subarray using the start and end variables.

 ->Return the largest subarray sum that is:- msf.
 */
//logic of techdose
func maxSubArray(_ nums: [Int]) -> Int {
    guard nums.count >= 1 && nums.count <= 100000 else {
        return 0
    }
    
    for i in 0..<nums.count{
        if nums[i] >= -10000 && nums[i] <= 10000 {
            continue
        }else{
            return 0
        }
    }
    
    var maxSum = nums[0]
    var sum = 0
    
    for i in 0..<nums.count{
        sum += nums[i]
        if(sum<nums[i]){
            sum = nums[i]
        }
        if(maxSum<sum){
            maxSum = sum
        }
    }
    return maxSum
}
/*
 Time Complexity: O(N)

 Space Complexity:O(1)
 */
print(maxSubArray([-2,-3,4,-1,-2,1,5,-3]))
print(maxSubArray([-1]))
print(maxSubArray([2,3,-22221]))
print(maxSubArray([2,1,22221]))
print(maxSubArray([]))

//Striver logic
//To get the sub array also.
func maxSubArrayWithSubArray(nums : [Int], subArray : inout [Int]) -> Int{
    guard nums.count >= 1 && nums.count <= 105 else {
        return 0
    }
    
    for i in 0..<nums.count{
        if nums[i] >= -10000 && nums[i] <= 10000 {
            continue
        }else{
            return 0
        }
    }
    
    var maxSum = nums[0]
    var sum = 0
    var startIndex = 0
    
    for i in 0..<nums.count{
        sum += nums[i]
        
        if(sum>maxSum){
            subArray = []
            maxSum = sum
            subArray.append(nums[startIndex])
            subArray.append(nums[i])
        }
        
        if(sum<0){
            sum = 0
            startIndex = i+1
        }
    }
    return maxSum
}

var arrayForTest :[Int] = [-1]
var subArrayForTest : [Int] = []
print(maxSubArrayWithSubArray(nums: arrayForTest, subArray: &subArrayForTest))
print(subArrayForTest)

//Leetcode solution on github
func leetcodeMaxSubArray(_ nums: [Int]) -> Int {
    var maxSum = nums[0]
    var sum = nums[0]
    
    for i in 1..<nums.count {
        sum = max(sum + nums[i], nums[i])
        maxSum = max(sum, maxSum)
    }
    
    return maxSum
    }
print("*****")
print(leetcodeMaxSubArray(arrayForTest))
print(leetcodeMaxSubArray([-1]))


