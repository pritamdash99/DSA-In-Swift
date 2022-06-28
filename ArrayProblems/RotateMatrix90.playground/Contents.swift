import Cocoa


/*
 Problem Statement: Given a matrix, your task is to rotate the matrix 90 degrees clockwise.
 Example 1:

 Input: [[1,2,3],[4,5,6],[7,8,9]]

 Output: [[7,4,1],[8,5,2],[9,6,3]]

 Explanation: Rotate the matrix simply by 90 degree clockwise and return the matrix.

 Example 2:

 Input: [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]

 Output:[[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]

 Explanation: Rotate the matrix simply by 90 degree clockwise and return the matrix
 
 Solution 1:Brute force

 Approach: Take another dummy matrix of n*n, and then take the first row of the matrix and put it in the last column of the dummy matrix, take the second row of the matrix, and put it in the second last column of the matrix and so.
 */
func rotateMatricBrute(matrix : [[Int]]) -> [[Int]]{
    let n = matrix.count
    var rotatedMatrix : [[Int]] = [[]]

    for i in 0..<n {
        for j in 0..<n {
            rotatedMatrix[j][i] = matrix[i][j]
        }
    }
    return rotatedMatrix
}

print(rotateMatricBrute(matrix: [[1,2,3],[4,5,6],[7,8,9]]))

/*
 Solution 2: Optimized approach

 Intuition: By observation, we see that the first column of the original matrix is the reverse of the first row of the rotated matrix, so that’s why we transpose the matrix and then reverse each row, and since we are making changes in the matrix itself space complexity gets reduced to O(1).

 Approach:

 Step1: Transpose of the matrix. (transposing means changing columns to rows and rows to columns)

 Step2: Reverse each row of the matrix.
 */

func rotateMatrix(matrix : inout [[Int]]){
    guard matrix.count >= 1 && matrix.count <= 20 else { return }
    guard matrix.count == matrix[0].count else { return }
    let n = matrix.count
    for i in 0..<n{
        for j in 0..<n{
            guard matrix[i][j] >= -1000 && matrix[i][j] <= 1000 else {
                return
            }
        }
    }
    for i in 0..<n{
        for j in i..<matrix[0].count{
            var temp = 0
            temp = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = temp
        }
    }
    for i in 0..<n{
        for j in 0..<n/2{
            var temp = 0
            temp = matrix[i][j]
            matrix[i][j] = matrix[i][n - 1 - j]
            matrix[i][n - 1 - j] = temp
        }
    }
}

var matrixForTest = [[1,2,3],[4,5,6],[7,8,9]]
rotateMatrix(matrix: &matrixForTest)
print(matrixForTest)
/*
 Output :
 [[7, 4, 1], [8, 5, 2], [9, 6, 3]]
 TC = O(n^2)
 SC = O(1)
 */

