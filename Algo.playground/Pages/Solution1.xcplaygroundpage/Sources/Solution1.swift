import Foundation

public struct Solution1 {
    
    public struct Indexes: CustomStringConvertible {
        let first: Int
        let second: Int
        
        public var description: String {
            return "(\(first), \(second))"
        }
    }
    
    public static func indexes(elements: [Int], sum: Int) -> Indexes? {
        return nil
    }
    
    public static func indexesByBruteForce(elements: [Int], sum: Int) -> Indexes? {
        for (index1, element1) in elements.enumerated() {
            for (index2, element2) in elements.suffix(from: index1).enumerated() {
                if element1 + element2 == sum {
                    return Indexes(first: index1, second: index2)
                }
            }
        }
        return nil
    }
    
    /**
     To improve our run time complexity, we need a more efficient way to check if the complement exists in the array. If the complement exists, we need to look up its index. What is the best way to maintain a mapping of each element in the array to its index? A hash table.
     
     We reduce the look up time from
     O(n)
     O(n) to O(1)
     O(1) by trading space for speed. A hash table is built exactly for this purpose, it supports fast look up in near constant time. I say "near" because if a collision occurred, a look up could degenerate to
     O(n)
     O(n) time. But look up in hash table should be amortized
     O(1)
     O(1) time as long as the hash function was chosen carefully.
     */
    public static func indexesByHashTable(elements: [Int], sum: Int) -> Indexes? {
        var hash: [Int: Int] = [:]
        for (index, element) in elements.enumerated() {
            if let first = hash[element] {
                return Indexes(first: first, second: index)
            } else {
                hash[sum - element] = index
            }
        }
        
        return nil
    }
    
}
