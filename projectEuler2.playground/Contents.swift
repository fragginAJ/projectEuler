//: Playground - noun: a place where people can play

import UIKit

/*
	Fibonacci sequence:
	F(n) = F(n-1) + F(n-2)

	Performing the houskeeping at the end of each loop is an easy way to get the wrong answer to this problem. Think the sequence through.
*/

//
// Helper Functions
//
func numberIsEven(number: Int) -> Bool {
	return (number % 2) == 0
}

//
// Brute Force
//
func bruteForceFibonacciSumWithinLimit(limit: Int) {
	var fibonacciOne = 1
	var fibonacciTwo = 1
	var fibonacciResult = 0
	var sum = 0
	
	repeat {
		if (numberIsEven(fibonacciResult)) {
			sum += fibonacciResult
		}
		
		fibonacciResult = fibonacciOne + fibonacciTwo
		fibonacciTwo = fibonacciOne
		fibonacciOne = fibonacciResult
	} while (fibonacciResult < limit)
	
	print(sum)
}

bruteForceFibonacciSumWithinLimit(4000000)

//
// Optimized to work with only even numbers
// http://www.mathblog.dk/project-euler-problem-2/
//
func optimallyFindFibonacciSumWithinLimit(limit: Int) {
	var fibonacciOne = 2
	var fibonacciTwo = 0
	var fibonacciResult = 2
	var sum = 0
	
	repeat {
		if (numberIsEven(fibonacciResult)) {
			sum += fibonacciResult
		}
		
		fibonacciResult = 4 * fibonacciOne + fibonacciTwo
		fibonacciTwo = fibonacciOne
		fibonacciOne = fibonacciResult
	} while (fibonacciResult < limit)
	
	print(sum)
}

optimallyFindFibonacciSumWithinLimit(4000000)