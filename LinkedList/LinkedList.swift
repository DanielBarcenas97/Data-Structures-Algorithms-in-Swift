//
//  LinkedList.swift
//  LinkedList
//
//  Created by Daniel Barcenas on 10/8/19.
//  Copyright © 2019 Daniel Barcenas. All rights reserved.
//

import Foundation

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
    
    public func node(at index: Int ) -> Node <Value>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
             currentNode = currentNode!.next
            currentIndex += 1
        }
        return currentNode
    }
    
    @discardableResult
    public func insert(_ value: Value, after node: Node <Value>) -> Node <Value> {
        guard tail !== node else{
            append(value)
            return tail!
        }
        node.next = Node(value: value,next: node.next)
        return node.next!
    }
    
    /*Remove Element*/
    
    public func pop() -> Value? {
        defer{
            head = head?.next
            if isEmpty{
                tail = nil
            }
        }
        return head?.value
    }
    
    
    public func removeLast() -> Value? {
        guard let head = head else{
            return nil
        }
        guard head.next != nil else{
            return pop()
        }
        
        var prev = head
        var current = head
        
        while let next = current.next{
            prev = current
            current = next
        }
        
        prev.next = nil
        tail = prev
        
        return current.value
    }
    
    
//
}



