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


