import Cocoa
/*
 Problem Statement: Given an integer N, return the first N rows of Pascal’s triangle.
 
 Input Format: N = 5

 Result:
     1
    1 1
   1 2 1
  1 3 3 1
 1 4 6 4 1

 Explanation: There are 5 rows in the output matrix. Each row corresponds to each one of the rows in the image shown above.
 
 Input Format: N = 1

 Result:
     1
 
 Intuition: When you see the image above, you get a pretty good idea of what you are supposed to do here. Think about the image as a matrix now where each line is basically a row in the matrix. So, first things first, if you are at the edge of the matrix, the value is 1, that’s for sure. Now, what about the inner elements? Well, any inner element is obtained by doing the sum of the 2 values present in the row just above it, i.e., if the element is at index (i, j), then matrix[i][j] can be obtained by doing matrix[i – 1][j – 1] + matrix[i – 1][j].
 
 The output array would look something like this :
 [[1],[1,1],[1,2,1],[1,3,3,1]]
 
 */

func generate(_ numRows: Int) -> [[Int]] {
            guard numRows >= 1 && numRows <= 30 else {
                return [[]]
            }
            
            var resultArray: [[Int]] = []
            while resultArray.count < numRows {
                if resultArray.count == 0 {
                    resultArray.append([1])
                }
                else if resultArray.count == 1 {
                    resultArray.append([1,1])
                }
                else {
                    var row : [Int] = []
                    for column in 0...resultArray.count {
                        if column == 0 || column == resultArray.count {
                            row.append(1)
                        }else{
                            row.append(resultArray[resultArray.count-1][column-1] + resultArray[resultArray.count-1][column])
                        }
                    }
                    resultArray.append(row)
                }
            }
            return resultArray
}


print(generate(0))
print(generate(1))
print(generate(5))
print(generate(31))
/*
 Output :
 [[]]
 [[1]]
 [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]]
 [[]]
 
 Time Complexity: We are creating a 2D array of size (numRows * numCols) (where 1 <= numCols <= numRows), and we are traversing through each of the cells to update it with its correct value, so Time Complexity = O(numRows2).

 Space Complexity: Since we are creating a 2D array, space complexity = O(numRows2).
 */

/*
 Pascal traingle problem 2 : Given an integer rowIndex, return the rowIndexth (0-indexed) row of the Pascal's triangle.
 Example 1:

 Input: rowIndex = 3
 Output: [1,3,3,1]

 Example 2:

 Input: rowIndex = 0
 Output: [1]

 Example 3:

 Input: rowIndex = 1
 Output: [1,1]

 Constraints:
     0 <= rowIndex <= 33

 */

func getRow(_ rowIndex: Int) -> [Int] {
    guard rowIndex >= 0 && rowIndex <= 33 else {
                return []
            }
            
            var resultArray: [[Int]] = []
            while resultArray.count <= rowIndex {
                if resultArray.count == 0 {
                    resultArray.append([1])
                }
                else if resultArray.count == 1 {
                    resultArray.append([1,1])
                }
                else {
                    var row : [Int] = []
                    for column in 0...resultArray.count {
                        if column == 0 || column == resultArray.count {
                            row.append(1)
                        }else{
                            row.append(resultArray[resultArray.count-1][column-1] + resultArray[resultArray.count-1][column])
                        }
                    }
                    resultArray.append(row)
                }
            }
            return resultArray[rowIndex]
}

print("******")

print(getRow(0))
print(getRow(1))
print(getRow(3))
print(getRow(5))
print(getRow(33))
print(getRow(34))

/*
 Output :
 [1]
 [1, 1]
 [1, 3, 3, 1]
 [1, 5, 10, 10, 5, 1]
 [1, 33, 528, 5456, 40920, 237336, 1107568, 4272048, 13884156, 38567100, 92561040, 193536720, 354817320, 573166440, 818809200, 1037158320, 1166803110, 1166803110, 1037158320, 818809200, 573166440, 354817320, 193536720, 92561040, 38567100, 13884156, 4272048, 1107568, 237336, 40920, 5456, 528, 33, 1]
 []
 */

