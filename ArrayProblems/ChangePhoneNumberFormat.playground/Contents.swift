import Cocoa

/*
 We are given a string S representing a phone number, which we would like to reformat. String S consists of N characters: digits, spaces, and/or dashes. It contains at least two digits.
 
 Spaces and dashes in string S can be ignored. We want to reformat the given phone number in such a way that the digits are grouped in blocks of length three, separated by single dashes. If necessary, the final block or the last two blocks can be of length two.
 
 For example:
 
 S = "00-44   48 5555 8361" should become
     "004-448-555-583-61"
 
 Assume:
 - S consists only of digits (0-9), spaces, and/or dashses (-)
 - S containts at least two digits
 
 Translate:
 
 Would like to reformat a phone number string so that:
 - every third char is a "-"
 - spaces and dashes don't matter
 - if the block ends in anything other than -xxx or -xx reformat to a block of two like xx-xx (not obvious)
 
 */
func solution(_ S : String) -> String {
    //First we need to get rid of the extra spaces and unarranged "-".
    
    let noSpace = S.replacingOccurrences(of: " ", with: "")
    let noSpaceNoDash = noSpace.replacingOccurrences(of: "-", with: "")
    
    //Strings don't have counters so we need to explicitly give them a counter.
    var counter = -2
    
    //We need to create another string to add the elements in correct format.
    var result = ""
    
    //We need to add the "-" after every 3rd element so [-2,-1,0,"-",1,2,3,"-",4,5,6,"-"..]
    
    for c in noSpaceNoDash{
        result.append(c)
        if counter % 3 == 0 {
            result.append("-")
        }
        counter += 1
    }
    
    //Majority work done. Now we need to deal with the extra "-" at the last element if any.
    if result.last == "-"{
        result = String(result.dropLast())
    }
    
    //Another edge case is reformatting the string.
    //If the format is "xxx-xxx-x" then we need to change it to "xxx-xx-xx"
    
    //For this we need to change the String to an Array
    var resultArray = Array(result)
    
    //Make a pointer to the 2nd last element of the array
    let secondLastElement = resultArray.count - 2
    
    if(resultArray[secondLastElement] == "-"){
        resultArray[secondLastElement] = resultArray[secondLastElement - 1]
        resultArray[secondLastElement - 1] = "-"
    }
    
    
    return String(resultArray)
}

print(solution("123456789"))        // 123-456-789
print(solution("555372654"))           // 555-372-654
print(solution("0 - 22 1985--324"))    // 022-198-53-24

// Edge cases
print(solution("01"))                      // 01
print(solution("012"))                         // 012
print(solution("0123"))                        // 01-23
print(solution("0123       444"))              // 012-34-44
print(solution("------0123       444"))        // 012-34-44

/*
 Output :
 123-456-789
 555-372-654
 022-198-53-24
 01
 012
 01-23
 012-34-44
 012-34-44
 */
