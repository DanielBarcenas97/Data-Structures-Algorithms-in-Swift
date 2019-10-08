import Foundation

public class Node <Value> {
    public var value: Value
    public var next: Node?
    
    public init(value: Value, next: Node? = nil){
        self.value = value
        self.next = next
        
    }
}


extension Node:CustomStringConvertible{
    public var description: String{
        guard let next  = next else{
            return "\(value)"
        }
        return "\(value)-> " + String(describing: next) + " "
    }
}


public class LinkedList <Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init(){}
    
    public var isEmpty:Bool {
        return head == nil
    }
    
}

extension LinkedList:CustomStringConvertible{
    public var description: String{
        guard let head  = head else{
            return "empty List"
        }
        return String(describing: head) + " "
    }
    
    public func push(_ value: Value){
        head = Node(value: value, next : head)
        if tail == nil{
            tail = head
        }
        
    }
    
    public func append(_ value: Value){
        
        guard !isEmpty else{
            push(value)
            return
        }
        
        tail!.next = Node (value: value)
        tail = tail!.next
    }
}





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

list.append(100) //Add element in Tail
list.append(120)

print(list)
