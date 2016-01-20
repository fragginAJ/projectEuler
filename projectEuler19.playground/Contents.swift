//: Playground - noun: a place where people can play

import UIKit

func numberOfSundaysTheFirst() {
	let dateComponents = NSDateComponents()
	dateComponents.day = 1
	var sundays = 0;
	
	for (var year = 1901; year <= 2000; year++) {
		for (var month = 1; month <= 12; month++) {
			dateComponents.month = month
			dateComponents.year = year
			let tmpDate = NSCalendar.currentCalendar().dateFromComponents(dateComponents)
			let weekday = NSCalendar.currentCalendar().components([.Weekday], fromDate: tmpDate!).weekday
			if (weekday == 1) {
				sundays++;
			}
		}
	}
	print(sundays)
}

numberOfSundaysTheFirst()
