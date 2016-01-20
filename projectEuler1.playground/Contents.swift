//: Playground - noun: a place where people can play

import UIKit

/*
	The basic idea here is to increment by 3 and 5 but be mindful of cases where multiples of
	3 and 5 are shared, such as 15 or 30.
*/


//
// Brute Force
//
func bruteForceCalculateSumOfThreeAndFiveMultiples()
{
	let upperLimit = 1000
	var sum = 0
	var counter = 1
	repeat {
		//check for both every time because multiples of 3 and 5 are sometimes the same
		//ex. 15, 30, 90, etc.
		if (((counter % 3) == 0) || ((counter % 5) == 0))
		{
			sum += counter
		}
		counter++
	} while counter < upperLimit
	
	print("Sum: ", sum)
}

bruteForceCalculateSumOfThreeAndFiveMultiples()


//
// Brute Force with Versatility
//
func bruteForceCalculateSumOfMultiples(multiples : [Int])
{
	let upperLimit = 1000
	var sum = 0
	var counter = 1
	repeat {
		for i in multiples
		{
			//Gotchya!
			if (counter % i == 0)
			{
				sum += counter
				break
			}
		}
		counter++
	} while counter < upperLimit
	
	print("Sum: ", sum)
}

bruteForceCalculateSumOfMultiples([3, 5, 7, 11])


//
// Optimized
// http://www.mathblog.dk/project-euler-problem-1/
// The sequences for any number divisible by n can be written as n*N*(N+1)/2.
//
func optimallyCalculateSumOfThreeAndFiveMultiples()
{
	//exclude the absolute upperLimit value by subtracting 1 because we want the 'sum of all the multiples below 1000'
	let upperLimit = 1000
	// (sum of multiples of 3) + (sum of multiples of 5) - (sum of multiples of 15)
	let sum = sumOfMultiple(3, upperLimit: (upperLimit-1)) + sumOfMultiple(5, upperLimit: (upperLimit-1)) - sumOfMultiple(15, upperLimit: (upperLimit-1))
	print("Sum: ", sum)
}

func sumOfMultiple(multiple: Int, upperLimit : Int) -> Int
{
	// n*N*(N+1)/2
	// n = multiple = sequential difference
	// N = upperLimit/multiple = index in sequence
	return multiple*(upperLimit/multiple)*((upperLimit/multiple)+1)/2
}

optimallyCalculateSumOfThreeAndFiveMultiples()


//
// Homework!
// Figure out how to make the above method more versatile; a.k.a allow an array of multiples to be
// passed in
//


