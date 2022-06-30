import Cocoa

/*
 Problem Statement: Given an array of intervals, merge all the overlapping intervals and return an array of non-overlapping intervals.

 Examples

 Example 1:

 Input: intervals=[[1,3],[2,6],[8,10],[15,18]]

 Output: [[1,6],[8,10],[15,18]]

 Explanation: Since intervals [1,3] and [2,6] are overlapping we can merge them to form [1,6]
  intervals.

 Example 2:

 Input: [[1,4],[4,5]]

 Output: [[1,5]]

 Explanation: Since intervals [1,3] and [2,6] are overlapping we can merge them to form [1,6] intervals.
 */

/*
 Solution 1: Brute force

 Approach: First check whether the array is sorted or not.If not sort the array. Now linearly iterate over the array and then check for all of its next intervals whether they are overlapping with the interval at the current index. Take a new data structure and insert the overlapped interval. If while iterating if the interval lies in the interval present in the data structure simply continue and move to the next interval.
 
 Time Complexity: O(NlogN)+O(N*N). O(NlogN) for sorting the array, and O(N*N) because we are checking to the right for each index which is a nested loop.

 Space Complexity: O(N), as we are using a separate data structure.
 */
/*
 Solution 2: Optimal approach

 Approach: Linearly iterate over the array if the data structure is empty insert the interval in the data structure. If the last element in the data structure overlaps with the current interval we merge the intervals by updating the last element in the data structure, and if the current interval does not overlap with the last element in the data structure simply insert it into the data structure.

 Intuition: Since we have sorted the intervals, the intervals which will be merging are bound to be adjacent. We kept on merging simultaneously as we were traversing through the array and when the element was non-overlapping we simply inserted the element in our data structure.
 */

func merge(_ intervals : [[Int]]) -> [[Int]] {
    if intervals.isEmpty {
        return []
    }
    //sort the array on the basis of the 1st element of the indexes and store it another data structure.
    var sorted = intervals.sorted { $0[0] < $1[0] }
    //storing the first sub array as default result matrix.
    var resultArray = [sorted.first!]
    //start from the second element as the 1st element is already a default part of the result array.
    for i in 1..<sorted.count{
        let previousStart = resultArray.last![0]
        let previousEnd = resultArray.last![1]
        
        let currentStart = sorted[i][0]
        let currentEnd = sorted[i][1]
        
        //putting the overlapping condition.
        if previousEnd >= currentStart && previousEnd < currentEnd {
            //remove the last element of the resultArray as it needs to be replaced by the new merged element.
            resultArray.removeLast()
            resultArray.append([previousStart, currentEnd])
        } else if previousEnd < currentStart {
            //as the above condition fails we just add the current start and current end.
            resultArray.append([currentStart, currentEnd])
        }
    }
    return resultArray
}
print(merge([[1,3],[2,6],[8,10],[15,18]]))
