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

