//: [Previous](@previous)

import Foundation


let array = [1,2,3,4]

func reverseArray<T>(_ array: [T]) {
	
	var stack = Stack<T>()
	
	for item in array {
		stack.push(item)
	}
	
	while let value = stack.pop() {
		print(value)
	}
}

reverseArray(array)


//: [Next](@next)
