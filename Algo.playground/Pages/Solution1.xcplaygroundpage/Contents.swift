//: [Previous](@previous)
/*:
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 ````
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 ````
 */

import Foundation

//: ### Approach 1: Brute Force O(n2)
let sampleb1 = Solution1.indexesByBruteForce(elements: [1, 2], sum: 4)
let sampleb2 = Solution1.indexesByBruteForce(elements: [1, 2], sum: 3)
let sampleb3 = Solution1.indexesByBruteForce(elements: [2, 11, 7, 15], sum: 9)
let sampleb4 = Solution1.indexesByBruteForce(elements: [2, 11, 15, 7], sum: 9)

//: ### Approach 2: Two-pass Hash Table
let sample1 = Solution1.indexesByHashTable(elements: [1, 2], sum: 4)
let sample2 = Solution1.indexesByHashTable(elements: [1, 2], sum: 3)
let sample3 = Solution1.indexesByHashTable(elements: [2, 11, 7, 15], sum: 9)
let sample4 = Solution1.indexesByHashTable(elements: [2, 11, 15, 7], sum: 9)
let sample5 = Solution1.indexesByHashTable(elements: [12, 2, 15, 7, 7], sum: 9)


//: [Next](@next)
