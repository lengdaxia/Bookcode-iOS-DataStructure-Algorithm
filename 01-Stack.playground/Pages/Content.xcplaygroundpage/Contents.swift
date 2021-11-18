import Helper

example("use a stack") {
	
	var stack = Stack<Int>()
	
	stack.push(1)
	stack.push(2)
	stack.push(3)
	stack.push(4)
	
	print(stack)
}



example("init by array literal") {
	var stack: Stack = [1.0, 2.0, 3.0, 4.0]
	print(stack)
	stack.pop()
}



example("init a stack by array") {
	
	let array = ["one","two","three","four"]
	var stack = Stack(array)
//	print(stack)
	stack.pop()
	print(stack)
}



