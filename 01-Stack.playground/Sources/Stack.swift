/// stack implement
public struct Stack<T>{
	
	private var storgae: [T] = []
	
	public init(){}
	
	public init(_ elements: [T]){
		storgae = elements
	}
	
	
	public mutating func push(_ element: T){
		storgae.append(element)
	}
	
	@discardableResult
	public mutating func pop() -> T?{
		storgae.popLast()
	}
	
	public func peek() -> T?{
		storgae.last
	}
	
	public var isEmpty: Bool {
		peek() == nil
	}
}

extension Stack: CustomDebugStringConvertible{
	public var debugDescription: String{
		"""
		---top---
		\(storgae.map {"\($0)"}.reversed().joined(separator: "\n"))
		---------
		"""
	}
}


extension Stack: ExpressibleByArrayLiteral{
	public init(arrayLiteral elements: T...) {
		storgae = elements
	}
}
