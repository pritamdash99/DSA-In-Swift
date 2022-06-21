import Cocoa

/*
 When someone searches their contacts based on a phone number, it's nice when a list
 of contact pops up.
 
 Write an algorithm that searches you contacts for phone number strings, and returns:
  - NO CONTACT if contact can't be found
  - A contact if a contact is found
  - The first alphabetized contact if there are multiple
 
 A = ["pim", "pom"]             // Contacts (return one of these)
 B = ["999999999", "777888999"] // Phone numbers for each contact A[i] = B[i]
 P = "88999"                    // Search phrase

 Answer should be correct. Don't worry about performance.
 */

public func solution(_ A : [String], _ B : [String], _ P : String) -> String {
    
    guard !A.isEmpty || !B.isEmpty || P.count != 0 else {
        return "No Contact"
    }
    
    // we start with creating an empty string array to store the names of the contact found.
    var result = Array<String>()
    
    //We loop through every element in B and find out if we have a match and if we do then we add the name of the corresponding conact i.e A[i] in result.
    for i in 0..<B.count {
        if B[i].contains(P){
            result.append(A[i])
        }
    }
    
    //We need to return the values handling edge cases.
    
    if result.count == 0
    {
        return "No Contact"
    }
    else if result.count == 1
    {
        return result.first!
    }
    
    return result.sorted().first!
}

let A = ["pim", "pom"]
let B = ["999999999", "777888999"]
let P = "88999"

print(solution(A, B, P))
print(solution(["sander", "amy", "ann"], ["12345", "23456", "123"], "1"))
print(solution(["ada,", "eva", "leo"], ["1212", "1111", "4444"], "112"))
// edge cases
print(solution([String](), [String](), ""))
print(solution(A, B, ""))

/*
 Output :
 pom
 ann
 No Contact
 No Contact
 No Contact
 */
