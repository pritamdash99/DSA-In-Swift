//
//  main.swift
//  DSA_In_Swift
//
//  Created by Pritam Dash on 12/06/22.
//

import Foundation

//class SinglyLinkedListNode {
//    let data : Int
//    var next : SinglyLinkedListNode?
//
//    init(_ data :Int, _ next : SinglyLinkedListNode? = nil)
//    {
//        self.data = data
//        self.next = next
//    }
//}
//
//func insertNodeAtTail(_ head : SinglyLinkedListNode? , _ data : Int) -> SinglyLinkedListNode {
//    var newNode = SinglyLinkedListNode(data)
//    if head == nil {
//        newNode = head
//    }
//    var current = head!
//    while current.next != nil {
//        current = current.next!
//    }
//    current.next = newNode
//    return newNode
//}
//
//func showLinkedList(){
//    guard head != nil else { return }
//
//    var result : [Int] = []
//
//    var node = head
//
//    //result.append(node!.data)
//
//    while node != nil {
//        result.append(node!.data)
//        node = node!.next
//    }
//
//    for r in result {
//        print(r,separator: "\n")
//    }
//
//}
//
//var head : SinglyLinkedListNode?
//let n : Int = Int(readLine()!)!
//
//for _ in 0..<n{
//    let data = Int(readLine()!)!
//    head = insertNodeAtTail(head,data)
//}
//
//showLinkedList()

/*
 141
 302
 164
 530
 474
 */

//class SinglyLinkedListNode {
//    let data: Int
//    var next: SinglyLinkedListNode?
//
//    init(data: Int) {
//        self.data = data
//    }
//}

///// Insert new node at the tail of linked list.
//func insertNodeAtTail(head: SinglyLinkedListNode?, data: Int) -> SinglyLinkedListNode? {
//    let node = SinglyLinkedListNode(data: data)
//    guard head != nil else { return node }
//
//    var curr = head
//    while let next = curr?.next {
//        curr = next
//    }
//
//    curr?.next = node
//    return head
//}
//
//func showLinkedList(head: SinglyLinkedListNode?) {
//    var current = head
//
//    while current != nil {
//        print(current!.data, separator: "\n")
//        current = current!.next
//    }
//}
//
//var head: SinglyLinkedListNode?
//let n: Int = Int(readLine()!)!
//
//for _ in 0..<n {
//    let element = Int(readLine()!)!
//    head = insertNodeAtTail(head: head, data: element)
//}
//
//showLinkedList(head: head)

class Node {
    var data : Int
    var left : Node?
    var right : Node?
    
    init(_ data : Int){
        self.data = data
    }
}
  
class Tree {
func postOrder(_ node : Node?){
    guard let node = node else { return }
    postOrder(node.left)
    postOrder(node.right)
    print(node.data)
}
func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(data)
        }
        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }
        return root
    }
}

var root : Node?
let tree = Tree()
var t = Int(readLine()!)!

for _ in 0..<t {
    let data = Int(readLine()!)!
    root = tree.insert(root: root, data: data )
}

tree.postOrder(root)
