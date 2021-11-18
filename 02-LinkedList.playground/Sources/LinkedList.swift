import Foundation

public class Node<Value>{
	public var value: Value
	public var next: Node?
	
	public init(value: Value, next: Node? = nil){
		self.value = value
		self.next = next
	}
}

extension Node: CustomStringConvertible{
	public var description: String{
		
		guard let next = next else {
			return "\(value)"
		}
		return "\(value) -> " + String(describing: next) + " "
	}
}


public struct LinkedList<Value>{
	
	public var head: Node<Value>?
	public var tail: Node<Value>?
	
	public init(){
		
	}
	
	public var isEmpty: Bool{
		head == nil
	}
	
	
	/// head add node
	public mutating func push(_ value: Value){
		head = Node(value: value, next: head)
		
		if tail == nil{
			tail = head
		}
	}
	
	/// tail add node
	public mutating func append(_ value: Value){
		
		
		//insure not empty list
		guard !isEmpty else{ //
			// empty list could push value directly
			push(value)
			
			return
		}
		
		// tail.next 由nil -》 last node
		tail!.next = Node(value: value)
		
		//tail移动到最后一个Node
		tail = tail!.next
	}
	
	///	node at index
	public func node(at index: Int) -> Node<Value>?{
		
		var currentNode = head
		var currentIndex = 0
		
		while currentNode != nil && currentIndex < index{
			currentNode = currentNode!.next
			currentIndex += 1
		}
		
		return currentNode
	}
	
	/// inser at index
	@discardableResult
	public mutating func insert(_ value: Value, after node: Node<Value>) -> Node<Value> {
		
		guard tail !== node else{
			append(value)
			return tail!
		}
		
		node.next = Node(value: value, next: node.next)
		
		return node.next!
	}
	
	
	///pop
	@discardableResult
	public mutating func pop() -> Value?{
		
		defer {
			head = head!.next
			
			if isEmpty{
				tail = nil
			}
		}
		
		return head?.value
	}
	
	
	/// remove last
	@discardableResult
	public mutating func removeLast() -> Value?{
		
		// empty list
		guard let head = head else {
			return nil
		}
		
		// 1 element list
		guard head.next != nil else{
			return pop()
		}
		
		// normal list
		var prev = head
		var current = head
		
		while let next = current.next {
			prev = current
			current = next
		}
		
		prev.next = nil
		tail = prev
		
		return current.value
	}
	
	
	/// remove after node
	@discardableResult
	public mutating func remove(after node: Node<Value>) -> Value?{
		defer{
			if node.next === tail{
				tail = node
			}
			
			node.next = node.next?.next
		}
		
		return node.next?.value
	}
}


extension LinkedList: CustomStringConvertible{
	
	public var description: String{
		guard let head = head else {
			return "Empty list"
		}
		
		return String(describing: head)
	}
}


