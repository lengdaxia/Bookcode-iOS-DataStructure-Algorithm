// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.

public struct Stack<Element>{
	
	private var storage: [Element] = []
	
//	public init(){}
	
	public init(_ elements: [Element]) {
		storage = elements
	}
	
	public mutating func push(_ element: Element){
		storage.append(element)
	}
	
	@discardableResult
	public mutating func pop() -> Element?{
		storage.popLast()
	}
	
	public func peek() -> Element?{
		storage.last
	}
	
	public var isEmpty: Bool{
		peek() == nil
	}
}


extension Stack: CustomStringConvertible{
	public var description: String{
		"""
		----top----
		\(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
		-----------
		"""
	}
}

example(of: "using a stack") {
	
	var stack = Stack<Int>()
	
	stack.push(1)
	stack.push(2)
	stack.push(3)
	stack.push(4)
	
	print(stack)
	
	if let poppedElement = stack.pop(){
		assert(4 == poppedElement)
		print("Popped :\(poppedElement)")
	}
}

extension Stack: ExpressibleByArrayLiteral{
	
	public init(arrayLiteral elements: Element...) {
		storage = elements
	}
}



example(of: "initializing a stack from an array") {
	let array = ["A", "B", "C", "D"]
	var stack = Stack(array)
	print(stack)
	stack.pop()
}
