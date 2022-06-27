import Cocoa

/*
 Problem Statement: You are given an array of prices where prices[i] is the price of a given stock on an ith day.

 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock. Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

 Examples:

 Example 1:

 Input: prices = [7,1,5,3,6,4]

 Output: 5

 Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.

 Note: That buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.

 Example 2:

 Input: prices = [7,6,4,3,1]

 Output: 0

 Explanation: In this case, no transactions are done and the max profit = 0.

 Solution:


 Solution 1: Brute Force

 Intuition: We can simply use 2 loops and track every transaction and maintain a variable maxPro to contain the max value among all transactions.

 Approach:

     Use a for loop of ‘i’ from 0 to n.
     Use another for loop from ‘i+1’ to n.
     If arr[j] > arr[i] , take the difference and compare  and store it in the maxPro variable.
     Return maxPro.
 */




