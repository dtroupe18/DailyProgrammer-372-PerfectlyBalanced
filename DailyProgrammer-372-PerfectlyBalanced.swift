/*
 
 Given a string containing only the characters x and y, find whether there are the same number of x's and y's.
 
 Test Cases:
 
 balancedBonus("xxxyyy") => True
 balancedBonus("yyyxxx") => True
 balancedBonus("xxxyyyy") => False
 balancedBonus("yyxyxxyxxyyyyxxxyxyx") => True
 balancedBonus("xyxxxxyyyxyxxyxxyy") => False
 balancedBonus("") => True
 balancedBonus("x") => False
 
 
 Bonus:
 
 Given a string containing only lowercase letters, find whether every letter that appears in the string appears the same number of times.
 Don't forget to handle the empty string ("") correctly!
 
 Test Cases:
 
 balanced("xxxyyyzzz", forBonus: true) => True
 balanced("abccbaabccba", forBonus: true) => True
 balanced("xxxyyyzzzz", forBonus: true) => False
 balanced("abcdefghijklmnopqrstuvwxyz", forBonus: true) => True
 balanced("pqq", forBonus: true) => False
 balanced("fdedfdeffeddefeeeefddf", forBonus: true) => False
 balanced("www", forBonus: true) => True
 balanced("x", forBonus: true) => True
 balanced("", forBonus: true) => True
 balanced(" ", forBonus: true) => True
 
 */


func balanced(_ str: String, forBonus: Bool = false) -> Bool {
    guard !str.isEmpty else { return true }
    let s = str.lowercased()
    
    var uniqueLetters = Set<Character>()
    var letterCountDict: [Character: Int] = [:]
    
    for char in s {
        uniqueLetters.insert(char)
        
        if let currentCount = letterCountDict[char] {
            letterCountDict[char] = currentCount + 1
        } else {
            letterCountDict[char] = 1
        }
    }
    
    if !forBonus && uniqueLetters.count != 2 {
        return false
    }
    
    let uniqueCounts = Set(letterCountDict.values)
    
    return uniqueCounts.count == 1
}

// Standard Cases

balanced("xxxyyy")
balanced("yyyxxx")
balanced("xxxyyyy")
balanced("yyxyxxyxxyyyyxxxyxyx")
balanced("xyxxxxyyyxyxxyxxyy")
balanced("")
balanced("x")


// Bonus Cases

balanced("xxxyyyzzz", forBonus: true)
balanced("abccbaabccba", forBonus: true)
balanced("xxxyyyzzzz", forBonus: true)
balanced("abcdefghijklmnopqrstuvwxyz", forBonus: true)
balanced("pqq", forBonus: true)
balanced("fdedfdeffeddefeeeefddf", forBonus: true)
balanced("www", forBonus: true)
balanced("x", forBonus: true)
balanced("", forBonus: true)
balanced(" ", forBonus: true)
