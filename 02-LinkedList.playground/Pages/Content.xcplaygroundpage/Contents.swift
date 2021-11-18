//: [Previous](@previous)

import Helper



example("create a linkedList node") {
	
	let n = Node(value: 1, next: Node(value: 2, next: nil))
	let n2 = Node(value: 3, next: n)
	print(n2)
}

example("push") {
	var list = LinkedList<Int>()
	
	list.push(1)
	list.push(2)
	list.push(3)
	
	print(list)
}



example("append") {
	var list = LinkedList<Int>()
	list.append(1)
	list.append(2)
	list.append(3)
	
	print(list)
}



example("inserting at a particular index") {
	
	var list = LinkedList<Int>()
	list.push(3)
	list.push(2)
	list.push(1)
	
	print("before insert : \(list)")
	
	let middleNode = list.node(at: 1)!
	
	for _ in 1...4{
		list.insert(8, after: middleNode)
	}
	
	print("after insert : \(list)")
}


example("pop") {
  var list = LinkedList<Int>()
  list.push(3)
  list.push(2)
  list.push(1)
  
  print("Before popping list: \(list)")
  let poppedValue = list.pop()
  print("After popping list: \(list)")
  print("Popped value: " + String(describing: poppedValue))
}


example("removing the last node") {
  var list = LinkedList<Int>()
  list.push(3)
  list.push(2)
  list.push(1)

  print("Before removing last node: \(list)")
  let removedValue = list.removeLast()

  print("After removing last node: \(list)")
  print("Removed value: " + String(describing: removedValue))
}


example( "removing a node after a particular node") {
  var list = LinkedList<Int>()
  list.push(3)
  list.push(2)
  list.push(1)
  
  print("Before removing at particular index: \(list)")
  let index = 1
  let node = list.node(at: index - 1)!
  let removedValue = list.remove(after: node)
  
  print("After removing at index \(index): \(list)")
  print("Removed value: " + String(describing: removedValue))
}









//: [Next](@next)
