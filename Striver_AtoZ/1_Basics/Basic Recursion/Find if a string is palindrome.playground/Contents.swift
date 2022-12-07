/*
 125. Valid Palindrome

 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string s, return true if it is a palindrome, or false otherwise.

 Example 1:

 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.

 Example 2:

 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.

 Example 3:

 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.

 
 Constraints:

     1 <= s.length <= 2 * 10^5
     s consists only of printable ASCII characters.


 */
import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var arr = Array(s)
        arr = arr.filter{
            $0.isLetter || $0.isNumber
        }
        return checkPalindrome(arr, 0, arr.count)
    }
    
    private func checkPalindrome(_ arr : [Character], _ i : Int, _ n :Int) -> Bool {
        if i >= n/2{
            return true
        }
        if arr[i].lowercased() != arr[n-i-1].lowercased(){
                return false
        }
        return checkPalindrome(arr,i+1,n)
    }
}
let x = Solution()
print(x.isPalindrome("ABCA"))// false
print(x.isPalindrome("A man, a plan, a canal: Panama")) // true

/*
 TC : O(n), as filter consumes O(n) even though the actual work goes till n/2.
 SC : O(n)
 */
