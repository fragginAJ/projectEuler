//: Playground - noun: a place where people can play

import UIKit


//
// Helper Functions
//
func numberMeetsDivisionRequirements(numberToCheck: Int) -> Bool {
	return !(numberToCheck %  2 != 0 || numberToCheck %  3 != 0 || numberToCheck %  4 != 0 || numberToCheck %  5 != 0 ||
			numberToCheck %  6 != 0 || numberToCheck %  7 != 0 || numberToCheck %  8 != 0 || numberToCheck %  9 != 0 ||
			numberToCheck % 10 != 0 || numberToCheck % 11 != 0 || numberToCheck % 12 != 0 || numberToCheck % 13 != 0 ||
			numberToCheck % 14 != 0 || numberToCheck % 15 != 0 || numberToCheck % 16 != 0 || numberToCheck % 17 != 0 ||
			numberToCheck % 18 != 0 || numberToCheck % 19 != 0 || numberToCheck % 20 != 0)
}

//
// Brute Force
// This takes FOREVER.
//
func bruteForceLowestDivisible() {
	var counter = 20
	let start: NSDate = NSDate.init()

	while (!numberMeetsDivisionRequirements(20)) {
			counter += 20
	}
	
	let end: NSDate = NSDate.init()
	let duration = end.timeIntervalSinceDate(start)
	print("Found solution of: \(counter)")
	print("Duration: \(duration)")
}

//bruteForceLowestDivisible()

