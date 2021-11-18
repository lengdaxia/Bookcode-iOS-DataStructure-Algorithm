//: [Previous](@previous)


/*:
 #2. Balance Parentheses

 Check for balanced parentheses. Given a string, check if there are ( and ) characters, and return true if the parentheses in the string are balanced.

 // 1
 h((e))llo(world)() // balanced parentheses
 
 // 2
 (hello world // unbalanced parentheses

 */


var str1 = "(hello,world)"
var str2 = "(hell0()()(world!"
var str3 = "(hello)))"

func checkParentness(_ string: String) -> Bool {
	var stack = Stack<Character>()
	
	for c in string {
		if c == "("{
			stack.push(c)
		}else if c == ")"{
			if stack.isEmpty{
				return false
			}else{
				stack.pop()
			}
		}
	}
	
	return stack.isEmpty
}

checkParentness(str1)
checkParentness(str2)
checkParentness(str3)



//: [Next](@next)
