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

func maxProfit(_ prices: [Int]) -> Int {
    var maxPro : Int = 0
    for i in 0..<prices.count {
        for j in i+1..<prices.count{
            if(prices[j] > prices[i]){
                maxPro =  max(prices[j] - prices[i], maxPro)
            }
        }
    }
    return maxPro
}

print(maxProfit([7,1,5,3,6,4]))
/*
 Output = 5
 Time complexity: O(n^2)
 Space Complexity: O(1)
 */

/*
 Soltuion 2:Optimal solution

 Intuition: We will linearly travel the array. We can maintain a minimum from the starting of the array and compare it with every element of the array, if it is greater than the minimum then take the difference and maintain it in max, otherwise update the minimum.

 Approach:

     Create a variable maxPro and mark it as 0.
     Create a variable minPrice and mark it as max_value.
     Run a for loop from 0 to n.
     Update the minPrice if it is greater than the current element of the array
     Take the difference of the minPrice with the current element of the array and compare and maintain it in maxPro.
     Return the maxPro.
 */
func maxProfitt(_ prices: [Int]) -> Int {
    guard prices.count >= 1 && prices.count <= 100000 else {
        return 0
    }
    
    for i in 0..<prices.count{
        guard prices[i] >= 0  && prices[i] <= 10000 else {
            return 0
        }
    }
    
    var maxPro = 0
    var minPrice = Int.max
   
    for i in 0..<prices.count{
        minPrice = min(minPrice, prices[i])
        maxPro = max(maxPro, prices[i] - minPrice)
    }
    return maxPro
}
print(maxProfitt([]))
print(maxProfitt([7,1,5,3,6,4]))
/*
 Output :
 0
 5
 
 TC : O(N)
 SC : O(1)
 
 */




