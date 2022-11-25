/*
 Example 1:

 Input: 5

 Output:
 
 4 4 4 4 4 4 4
 4 3 3 3 3 3 4
 4 3 2 2 2 3 4
 4 3 2 1 2 3 4
 4 3 2 2 2 3 4
 4 3 3 3 3 3 4
 4 4 4 4 4 4 4
 
 Your Task:

 You don't need to input anything. Complete the function printTriangle() which takes  an integer n  as the input parameter and print the pattern.

 Constraints:

     1< N <= 20

 */
import Foundation

func printSquare(_ n : Int){
    guard n > 0 else { return }
    var n = n
    let size = 2 * n - 1
    var start = 0
    var end = size - 1
    var arr = Array(repeating: Array(repeating: 0, count: size), count: size)
    
    while n != 0 {
        for i in start...end{
            for j in start...end{
                if i == start || i == end || j == start || j == end {
                    arr[i][j] = n
                }
            }
        }
        start += 1
        end -= 1
        n -= 1
    }
    
    for i in 0..<arr.count{
        for j in 0..<(arr.first?.count ?? 0){
            print(arr[i][j], terminator: "")
        }
        print("")
    }
}

printSquare(4)

/*
 Output :
 
 ****
 *  *
 *  *
 ****
 */


