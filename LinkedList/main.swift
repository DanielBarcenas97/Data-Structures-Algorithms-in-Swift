//
//  main.swift
//  LinkedList
//
//  Created by Daniel Barcenas on 10/8/19.
//  Copyright © 2019 Daniel Barcenas. All rights reserved.
//

import Foundation

print("The list ")
/*
let node1 = Node(value:5)
let node2 = Node(value:6)
let node3 = Node(value:7)

node1.next=node2
node2.next=node3
*/
var list = LinkedList<Int>()

print(list)  //List is empty

list.push(5) //Add element in Head
list.push(6)
list.push(7)

print(list)

list.append(100)
list.append(120)

print(list)

var middleNode = list.node(at:0)!
list.insert(100, after: middleNode)
print(list)


let valor = list.pop()
print(list)

print(valor!)


let valorFin = list.removeLast()
print(valorFin!)
print(list)
