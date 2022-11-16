import Foundation

//Creating my own linkedlist for practice
class Node {
    var data : Int
    var next : Node?

    init(_ data : Int, _ next : Node? = nil) {
        //incase of tail , node can be nil hence optional
        self.data = data
        self.next = next
    }
}

class LinkedList {
    private var head : Node?

    func printLinkedList() {
        guard head != nil else { return }

        var result : [Int] = []

        var node = head

        //result.append(node!.data)

        while node != nil {
            result.append(node!.data)
            node = node!.next
        }
        
        for r in result {
            print(r,separator: "\n")
        }
    }

    func addFront(_ data : Int ) {
        let newNode = Node(data)
        newNode.next = head
        head = newNode
    }

    func getFirst() -> Int? {
        if head == nil {
            return nil
        }
        return head!.data
    }
}

let ll = LinkedList()
ll.addFront(2)
ll.addFront(3)
ll.addFront(4)
ll.addFront(5)
ll.printLinkedList()

/*

class Node {
    let data: Int
    var next: Node?

    init(data: Int) {
        self.data = data
    }
}

/// Insert new node at the tail of linked list.
func insert(head: Node?, data: Int) -> Node? {
    let node = Node(data: data)
    guard head != nil else { return node }

    var curr = head
    while let next = curr?.next {
        curr = next
    }

    curr?.next = node
    return head
}

func display(head: Node?) {
    var current = head

    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?
let n: Int = Int(readLine()!)!

for _ in 0..<n {
    let element = Int(readLine()!)!
    head = insert(head: head, data: element)
}

display(head: head)

*/



