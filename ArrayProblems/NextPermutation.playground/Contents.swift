import Cocoa

/*
 Problem Statement: Given an array Arr[] of integers, rearrange the numbers of the given array into the lexicographically next greater permutation of numbers.

 If such an arrangement is not possible, it must rearrange it as the lowest possible order (i.e., sorted in ascending order).

 Example 1 :

 Input format: Arr[] = {1,3,2}

 Output: Arr[] = {2,1,3}

 Explanation: All permutations of {1,2,3} are {{1,2,3} , {1,3,2}, {2,13} , {2,3,1} , {3,1,2} , {3,2,1}}. So, the next permutation just after {1,3,2} is {2,1,3}.

 Example 2:

 Input format: Arr[] = {3,2,1}

 Output: Arr[] = {1,2,3}

 Explanation: As we see all permutations of {1,2,3}, we find {3,2,1} at the last position. So, we have to return the topmost permutation.
 
 Solution 1 Brute Force: Finding all possible permutations.

 Approach :

 Step 1: Find all possible permutations of elements present and store them.

 Step 2: Search input from all possible permutations.

 Step 3: Print the next permutation present right after it.
 
 */
//Code for finding all possible permutations.
func permuteRecursive(nums n: [Int], begin: Int, result: inout [[Int]]) {
    var nums = n
        if begin >= nums.count {
            result.append(nums)
            return
        }
        for i in begin..<nums.count {
            nums.swapAt(i, begin)
            permuteRecursive(nums: nums, begin: begin + 1, result: &result)
            nums.swapAt(i, begin)
        }
    }

func permute(_ nums: [Int]) -> [Int] {
        var result = [[Int]]()
    permuteRecursive(nums: nums.sorted(), begin: 0, result: &result)
    
    var currentPermutation : [Int] = []
    
    for i in 0..<result.count{
        currentPermutation = []
        for j in 0..<result[i].count{
            currentPermutation.append(result[i][j])
            if currentPermutation == nums {
                return result[i+1]
            }
        }
        
    }
        return []
    }

print(permute([1,2,3]))

/*
 
 Time Complexity :
 
 For finding, all possible permutations, it is taking N!xN. N represents the number of elements present in the input array. Also for searching input arrays from all possible permutations will take N!. Therefore, it has a Time complexity of O((N!xN) + N*N).

 Space Complexity :

 Since we are using an extra array to solve this so O(N) ).
 */


func nextPermutationLeetCode(_ nums: inout [Int]) {
        let len = nums.count
        var lhs = -1, rhs = -1, idx = len - 2
        while idx >= 0 {
            if nums[idx] < nums[idx + 1] { lhs = idx; break }
            idx -= 1
        }
        if lhs == -1 { nums = nums.reversed(); return }
        
        idx = len - 1
        while idx > lhs {
            rhs = idx
            if nums[idx] > nums[lhs] { break }
            idx -= 1
        }
        nums.swapAt(lhs, rhs)
        nums.replaceSubrange(lhs + 1..<len, with: nums[lhs + 1...len - 1].reversed())
    }
var findPermutationnew = [4,1,3,2]
nextPermutationLeetCode(&findPermutationnew)
print(findPermutationnew)


func nextPermutationLeetCodeNew(_ nums: inout [Int]){
    guard nums.count >= 1 else {
        return
    }
    var len = nums.count
    var i = 1
    var peek = -1
    
    //checking if the array is in descending order
    if nums == nums.sorted().reversed(){
        nums = nums.reversed()
        return
    }
    
    //Find the peak of the last ascending order
    while(i<len){
        if nums[i] > nums[i-1]{
            peek = i
        }
        i += 1
    }
    
    //Find element in the range(nums[peek - 1] to nums[peek]) to the right
    var index = peek
    for i in peek..<len {
        if(nums[i] > nums[peek - 1] && nums[i] < nums[index]){
            index = i
        }
    }
    
    nums.swapAt(peek - 1, index)
    nums[nums.startIndex + peek..<nums.endIndex].sort()
}

print("***")
var findPermutationnn : [Int] = [1,4,5,2,3]
nextPermutationLeetCodeNew(&findPermutationnn)
print(findPermutationnn)
/*
 Output :
 [1, 4, 5, 3, 2]
 */
