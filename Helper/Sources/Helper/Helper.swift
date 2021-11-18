public struct Helper {
    public private(set) var text = "Hello, World!"
}


public func example(_ description: String, action: ()->()){
	print("--- \(description) ---")
	action()
	print("--- end --- \n")
}

