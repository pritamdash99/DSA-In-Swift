import Cocoa

/*
 Problem Statement: Given a matrix if an element in the matrix is 0 then you will have to set its entire column and row to 0 and then return the matrix.
 
 Examples 1:

 Input: matrix=[[1,1,1],[1,0,1],[1,1,1]]

 Output: [[1,0,1],[0,0,0],[1,0,1]]

 Explanation: Since matrix[2][2]=0.Therfore the 2nd column and 2nd row wil be set to 0.
  
 Input: matrix=[[0,1,2,0],[3,4,5,2],[1,3,1,5]]

 Output:[[0,0,0,0],[0,4,5,0],[0,3,1,0]]

 Explanation:Since matrix[0][0]=0 and matrix[0][3]=0. Therefore 1st row, 1st column and 4th column will be set to 0
 
 */

/*
 Brut Force Approach :
 Assuming all the elements in the matrix are non-negative. Traverse through the matrix and if you find an element with value 0, then change all the elements in its row and column to -1, except when an element is 0. The reason for not changing other elements to 0, but -1, is because that might affect other columns and rows. Now traverse through the matrix again and if an element is -1 change it to 0, which will be the answer.
 
 */
func setMatrixZero(matrix : [[Int]]) -> [[Int]]{
    var mutatedMatrix = matrix //doing this because matrix is immutable
    let row = mutatedMatrix.count
    let column = (mutatedMatrix.first?.count ?? 0)
    
    for i in 0..<row{
        for j in 0..<column{
            
            if mutatedMatrix[i][j] == 0 {
               //Here you have found your 0 , so now convert the i - 1, i + 1, j - 1 , j + 1 positions to -1 if they are non zero elements.
                
                var index = i - 1 //to set the rows(of column j) above the ith row to -1
                while index >= 0 {
                    if mutatedMatrix[index][j] != 0 {
                        mutatedMatrix[index][j] = -1
                    }
                    index -= 1
                }
                
                index = i + 1 //to set the rows(of column j) bellow the ith row to -1
                while index < row {
                    if mutatedMatrix[index][j] != 0 {
                        mutatedMatrix[index][j] = -1
                    }
                    index += 1
                }
                
                index = j - 1 //to set the columns(of row i) to the left of the jth column to -1
                while index >= 0 {
                    if mutatedMatrix[i][index] != 0 {
                        mutatedMatrix[i][index] = -1
                    }
                    index -= 1
                }
                
                index = j + 1 //to set the columns(of row i) to the right of the jth column to -1
                while index < column {
                    if mutatedMatrix[i][index] != 0 {
                        mutatedMatrix[i][index] = -1
                    }
                    index += 1
                }
            }
        }
    }
    
    //Now the -1 values need to be set to 0, so taking another loop
    for i in 0..<row{
        for j in 0..<column{
            if mutatedMatrix[i][j] <= 0{
                mutatedMatrix[i][j] = 0
            }
        }
    }
    
    
    return mutatedMatrix
}

print(setMatrixZero(matrix: [[1,1,1],[1,0,1],[1,1,1]]))

/*
 Output :
 [[1, 0, 1], [0, 0, 0], [1, 0, 1]]
 
 Time Complexity:O((N*M)*(N + M)). O(N*M) for traversing through each element and (N+M)for traversing to row and column of elements having value 0.

 Space Complexity:O(1)
 */
