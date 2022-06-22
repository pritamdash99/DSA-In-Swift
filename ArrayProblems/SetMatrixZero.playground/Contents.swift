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
func setMatrixZeroBrute(matrix : [[Int]]) -> [[Int]]{
    var mutatedMatrix = matrix //doing this because matrix is immutable
    let row = mutatedMatrix.count
    guard row > 0 else { return matrix }
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

print(setMatrixZeroBrute(matrix: [[1,1,1],[1,0,1],[1,1,1]]))

/*
 Output :
 [[1, 0, 1], [0, 0, 0], [1, 0, 1]]
 
 Time Complexity:O((N*M)*(N + M)). O(N*M) for traversing through each element and (N+M)for traversing to row and column of elements having value 0.

 Space Complexity:O(N)
 */


/*
 Better Approach :
 Intuition: Instead of traversing through each row and column, we can use dummy arrays to check if the particular row or column has an element 0 or not, which will improve the time complexity.

 Approach:Take two dummy array one of size of row and other of size of column.Now traverse through the array.If matrix[i][j]==0 then set dummy1[i]=0(for row) and dummy2[j]=0(for column).Now traverse through the array again and if dummy1[i]==0  || dummy2[j]==0 then arr[i][j]=0,else continue.

 */

func setMatrixZeroBetter(_ matrix : inout [[Int]])
{
    let row = matrix.count
    let column = (matrix.first?.count ?? 0)
    
    var dummyRow : [Int] = .init(repeating: -1, count: row)
    var dummyCol : [Int] = .init(repeating: -1, count: column)

    for i in 0..<row {
        for j in 0..<column {
            if matrix[i][j] == 0{
                dummyRow[i] = 0
                dummyCol[j] = 0
            }
        }
    }
    
    for i in 0..<row{
        for j in 0..<column{
            if dummyRow[i] == 0 || dummyCol[j] == 0{
                matrix[i][j] = 0
            }
        }
    }
}

var matrixForTest = [[1,1,1],[1,0,1],[1,1,1]]
setMatrixZeroBetter(&matrixForTest)
print(matrixForTest)
/*
 Output :
 ()
 [[1, 0, 1], [0, 0, 0], [1, 0, 1]]
 Time Complexity: O(N*M + N*M)

 Space Complexity: O(N)
 */

/*
 Solution 3:Optimizing the better approach.

 Intuition: Instead of taking two dummy arrays we can use the first row and column of the matrix for the same work. This will help to reduce the space complexity of the problem. While traversing for the second time the first row and column will be computed first, which will affect the values of further elements that’s why we traversing in the reverse direction.

 Approach:Instead of taking two separate dummy array,take first row and column of the matrix as the array for checking whether the particular column or row has the value 0 or not.Since matrix[0][0] are overlapping.Therefore take separate variable col0(say) to check if the 0th column has 0 or not and use matrix[0][0] to check if the 0th row has 0 or not.Now traverse from last element to the first element and check if matrix[i][0]==0 || matrix[0][j]==0 and if true set matrix[i][j]=0,else continue.
 */

func setMatrixZeroBest(_ matrix : inout [[Int]])
{
    let rows = matrix.count
    guard rows > 0 else
    {
        return
    }
    let cols = matrix.first?.count
    var column0 = 1 // 1= true
    
    //travel from matrix[0][0] to matrix[row-1][column-1]
    for i in 0..<rows{
        if matrix[i][0] == 0 {
            column0 = 0 // 0 = false //Setting this false now will come in handy later.
        }
        for j in 1..<(cols ?? 0){
            if matrix[i][j] == 0{
                //Once a 0 is found you make the left most and top most element as 0
                matrix[i][0] = 0
                matrix[0][j] = 0
            }
        }
    }
    
    //Now travel backwards from matrix[row-1][column-1] to matrix[0][0]
    for i in stride(from: rows-1, to: 0, by: -1)
    {
        for j in stride(from: (cols ?? 0) - 1, to: 1, by: -1)
        {
            if matrix[i][0] == 0 || matrix[0][j] == 0 {
                matrix[i][j] = 0
            }
        }
        if column0 == 0 {
            matrix[i][0] = 0
        }
    }
}

var matrixNewForTest = [[1,1,1],[1,0,1],[1,1,1]]
setMatrixZeroBetter(&matrixNewForTest)
print(matrixNewForTest)

/*
 Output :
 [[1, 0, 1], [0, 0, 0], [1, 0, 1]]
 
 Time Complexity: O(2*(N*M)), as we are traversing two times in a matrix,

 Space Complexity: O(1).
 */
