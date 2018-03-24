//
//  MyStack.swift
//
//  This class is a 'blueprint' for a stack
//
//
//  Created by Heejo Suh in Mar 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
//			swiftc MyStack.swift



//------------------------------------------------

class MyStack{
	//This class defines the stack
	
	//create private list
	private var list: [Int] = []

	//create error enum
	enum NewError : Error {
    	case IndexOutOfRange(String)
	}
	
	//-----------------------
	public func str() -> String {
		//returns list as a string
		return "\(list)"
	}

	//-----------------------	
	public func at(index: Int) -> Int{
		//returns the item at input index
		return list[index]
	}

	//-----------------------		
	public func pop() -> Int {
		//pops the last value from the stack and returns it
		
		
		if list.count()==0{
			throw MyError.IndexOutOfRange("ERROR: list index out of range!")
		} else {
		let value: Int = list[list.count - 1]
		list.removeLast()
		return value
		}
	}

	//-----------------------
	public func push(value: Int) {
		//append an object to the end of the stack
		list.append(value)
	}
}

