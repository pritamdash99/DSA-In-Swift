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
        
        result.append(node!.data)
        
        while node != nil {
            result.append(node!.data)
            node = node!.next
        }
        print(result)
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




