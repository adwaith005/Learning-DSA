class ListNode {
  dynamic val;
  ListNode? next;
  
  ListNode(this.val);
}

ListNode? reverseLinkedList(ListNode? head) {
  ListNode? prev = null;
  ListNode? current = head;
  
  while (current != null) {
    ListNode? nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }
  
  return prev;
}

void printLinkedList(ListNode? head) {
  ListNode? current = head;
  
  while (current != null) {
    print(current.val);
    current = current.next;
  }
}

void main() {
  // Creating a sample linked list: 1 -> 2 -> 3 -> 4 -> 5
  ListNode head = ListNode(1);
  head.next = ListNode(2);
  head.next!.next = ListNode(3);
  head.next!.next!.next = ListNode(4);
  head.next!.next!.next!.next = ListNode(5);
  
  print('Original Linked List:');
  printLinkedList(head);
  
  // Reversing the linked list
  ListNode? reversedHead = reverseLinkedList(head);
  
  print('\nReversed Linked List:');
  printLinkedList(reversedHead);
}
