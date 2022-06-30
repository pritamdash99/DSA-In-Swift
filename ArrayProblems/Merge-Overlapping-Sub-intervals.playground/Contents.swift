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

