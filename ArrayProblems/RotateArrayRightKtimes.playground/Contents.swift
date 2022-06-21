import Cocoa

/*
 Rotate An array to the right K times.
 Given a = [3,8,9,7,6]
 k = 3
 The function should return [9,7,6,3,8]
 */
func solution(A:[Int], K : Int) -> [Int] {
    //checking for edge cases.
    guard K>0 else{
        return A
    }
    guard !A.isEmpty else {
        return A
    }
    var resultArray = A
    
    for _ in 0...K {
        resultArray = rotateRightOnce(A: resultArray)
    }
    return resultArray
}

func rotateRightOnce(A : [Int]) -> [Int] {
    //create a temp array of the same size of the Array passed
    var tempArray = Array<Int>(repeating: 0, count: A.count)
    
    //Fill the temp array from position 1 to last
    for i in 0..<A.count-1 {
        tempArray[i+1] = A[i]
    }
    //Add the first element of temp array as the last element of A
    tempArray[0] = A.last!
    
    //return the array
    return tempArray
}

print(rotateRightOnce(A: [1,2,3,4,5]))
print(solution(A: [1,2,3,4,5], K: 1))
print(solution(A: [1,2,3,4,5], K: 2))
print(solution(A: [1,2,3,4,5], K: 3))

print(solution(A: [3,8,9,7,6], K: 3))

/*
 Output :
 [5, 1, 2, 3, 4]
 [4, 5, 1, 2, 3]
 [3, 4, 5, 1, 2]
 [2, 3, 4, 5, 1]
 [8, 9, 7, 6, 3]
 */
