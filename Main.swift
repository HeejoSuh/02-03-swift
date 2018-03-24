
//
//  Main.swift
//
//   This program uses the stack 'MyStack'
//
//
//  Created by Heejo Suh in Mar 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
//			swiftc Main.swift



//------------------------------------------------


//import Foundation


var inputNumber : Int?

//get integer input
while true {
	print("Try a number: ")
	
	let input: String? = readLine(strippingNewline: true)
	
	if Int(input!) != nil {
		inputNumber = Int(input!)
		break;
	} else {
		print("Insert an integer!")
	}
}
		
//---------------------
//instantiate stack		
var stackObject = MyStack()

//push to list		
stackObject.push(value: inputNumber!)
print("Pushed \(stackObject.at(index: 0))")
print("List: \(stackObject.str())")

//pop from list
print("Popped \(stackObject.pop())")
print("List: \(stackObject.str())")
