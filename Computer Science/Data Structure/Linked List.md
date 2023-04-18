

# Linked Lists 
A linked list is a linear data structure in which the elements are not stored at contiguous locations. Each element contains data and a pointer to the next element. Linked lists allow for efficient insertion, removal, search and traversal operations. 

## Types of Linked Lists 
There are two types of linked lists: 

1. Singly Linked List: Each node has a pointer to the next node. 
2. Doubly Linked List: Each node has pointers to both the next and previous nodes. 

## Storage and Access 
Nodes in a linked list are allocated memory dynamically at the time of insertion. 
Access is sequential using the pointers. 

## Operations 
### Insertion 
To insert a new node with value 'x' at the beginning: 
head = insertAtBeginning(head, x) 

To insert after a given node: 
insertAfter(node, x) 

### Deletion 
To delete the first node: 
head = deleteFirst(head) 

To delete a given node: 
deleteNode(node) 

### Searching 
Linear search is used to search an element in a linked list. 
search(head, x) 

### Traversal 
Traverse a linked list in three ways: 
1. Forward: move forward using pointer 
2. Backward: move backward using pointer 
3. Both: move in both forward and backward direction 

## Examples 
### C/C++ 
struct Node { 
    int data; 
    struct Node* next; 
}; 

### Python 
class Node: 
    def __init__(self, data): 
        self.data = data 
        self.next = None

## Questions 
Q1. What is the time complexity of insertion, deletion and search operations in linked lists? 
A1. Insertion and Deletion: O(1), Search: O(n) 

Q2. What is the space complexity of linked lists? 
A2. O(n) since we allocate memory for n pointers. 

Q3. What are the advantages of linked lists over arrays? 
A3. Insertion and Deletion: Easier, Insertion at beginning/end possible,  Dynamic size. 
Searching: Reaches end only after finding the element. 
No wastage of space for unused locations. 
More memory efficient.

# Introduction to Linked List

A linked list is a linear data structure in which elements are stored in a non-contiguous manner. Each element (node) of a linked list consists of two parts: data and a pointer to the next node. The first node is called the head, and the last node is called the tail. A linked list can be singly linked, where each node has a pointer pointing to the next node, or doubly linked, where each node has a pointer pointing to both the next and previous nodes.

Linked lists are used in many applications, such as implementing stacks, queues, and hash tables. They are also used for dynamic memory allocation, as the memory can be allocated and freed as needed.

# Examples in C

## Singly Linked List

```c
#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node* next;
};

struct Node* head = NULL;

void insert(int data) {
    struct Node* node = (struct Node*) malloc(sizeof(struct Node));
    node->data = data;
    node->next = head;
    head = node;
}

void print() {
    struct Node* current = head;
    while (current != NULL) {
        printf("%d ", current->data);
        current = current->next;
    }
}

int main() {
    insert(1);
    insert(2);
    insert(3);
    print();
    return 0;
}
```

## Doubly Linked List

```c
#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node* prev;
    struct Node* next;
};

struct Node* head = NULL;

void insert(int data) {
    struct Node* node = (struct Node*) malloc(sizeof(struct Node));
    node->data = data;
    node->prev = NULL;
    node->next = head;
    if (head != NULL) {
        head->prev = node;
    }
    head = node;
}

void print() {
    struct Node* current = head;
    while (current != NULL) {
        printf("%d ", current->data);
        current = current->next;
    }
}

int main() {
    insert(1);
    insert(2);
    insert(3);
    print();
    return 0;
}
```

# Examples in C++

## Singly Linked List

```cpp
#include <iostream>

using namespace std;

struct Node {
    int data;
    struct Node* next;
};

struct Node* head = NULL;

void insert(int data) {
    struct Node* node = new Node();
    node->data = data;
    node->next = head;
    head = node;
}

void print() {
    struct Node* current = head;
    while (current != NULL) {
        cout << current->data << " ";
        current = current->next;
    }
}

int main() {
    insert(1);
    insert(2);
    insert(3);
    print();
    return 0;
}
```

## Doubly Linked List

```cpp
#include <iostream>

using namespace std;

struct Node {
    int data;
    struct Node* prev;
    struct Node* next;
};

struct Node* head = NULL;

void insert(int data) {
    struct Node* node = new Node();
    node->data = data;
    node->prev = NULL;
    node->next = head;
    if (head != NULL) {
        head->prev = node;
    }
    head = node;
}

void print() {
    struct Node* current = head;
    while (current != NULL) {
        cout << current->data << " ";
        current = current->next;
    }
}

int main() {
    insert(1);
    insert(2);
    insert(3);
    print();
    return 0;
}
```

# Examples in Python

## Singly Linked List

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None

    def insert(self, data):
        node = Node(data)
        node.next = self.head
        self.head = node

    def print(self):
        current = self.head
        while current is not None:
            print(current.data, end=' ')
            current = current.next

llist = LinkedList()
llist.insert(1)
llist.insert(2)
llist.insert(3)
llist.print()
```

## Doubly Linked List

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.prev = None
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None

    def insert(self, data):
        node = Node(data)
        node.prev = None
        node.next = self.head
        if self.head is not None:
            self.head.prev = node
        self.head = node

    def print(self):
        current = self.head
        while current is not None:
            print(current.data, end=' ')
            current = current.next

llist = LinkedList()
llist.insert(1)
llist.insert(2)
llist.insert(3)
llist.print()
```

# Examples of Q&A for University Exams

Q: What is a linked list?

A: A linked list is a linear data structure in which elements are stored in a non-contiguous manner. Each element (node) of a linked list consists of two parts: data and a pointer to the next node.

Q: What are the advantages of using a linked list over an array?

A: The advantages of using a linked list over an array are:
- Dynamic memory allocation: Linked lists allow for dynamic memory allocation, which means that the memory can be allocated and freed as needed.
- Insertion and deletion: Insertion and deletion of elements can be done in O(1) time complexity, whereas in an array, it takes O(n) time complexity.
- Size: Linked lists can be used to store a large number of elements, as the memory is allocated dynamically.

Q: What is the time complexity of inserting an element at the beginning of a singly linked list?

A: The time complexity of inserting an element at the beginning of a singly linked list is O(1).

Q: What is the time complexity of deleting an element at the beginning of a doubly linked list?

A: The time complexity of deleting an element at the beginning of a doubly linked list is O(1).

# more quesionts


Q: What is the time complexity of inserting an element at the end of a singly linked list? How can you optimize this operation?

A: The time complexity of inserting an element at the end of a singly linked list is O(n), where n is the number of elements in the list. This is because we need to traverse the entire list to reach the end before we can insert the new element. To optimize this operation, we can keep a tail pointer that points to the last element of the list. This way, we can insert a new element at the end of the list in O(1) time complexity.

Q: How can you detect if a linked list has a loop? What is the time complexity of this operation?

A: One way to detect if a linked list has a loop is by using the Floyd's cycle-finding algorithm, also known as the "tortoise and hare" algorithm. The algorithm involves using two pointers, one moving at a slower pace (tortoise) and the other at a faster pace (hare). If there is a loop in the linked list, the hare will eventually catch up to the tortoise. The time complexity of this algorithm is O(n), where n is the number of elements in the list.

Q: How can you reverse a linked list? What is the time complexity of this operation?

A: To reverse a linked list, we can traverse the list and change the pointers to point to the previous node instead of the next node. We also need to keep track of the previous node and the current node while traversing the list. The time complexity of this operation is O(n), where n is the number of elements in the list.

Q: What is the difference between a singly linked list and a doubly linked list? In what situations would you prefer one over the other?

A: The main difference between a singly linked list and a doubly linked list is that in a singly linked list, each node only has a pointer to the next node, whereas in a doubly linked list, each node has a pointer to both the next and previous nodes. Singly linked lists are simpler and use less memory, but they do not allow for efficient traversal in the reverse direction. Doubly linked lists allow for efficient traversal in both directions, but they use more memory due to the extra pointer in each node. The choice between the two depends on the specific requirements of the application.

Q: How can you find the middle element of a linked list? What is the time complexity of this operation?

A: One way to find the middle element of a linked list is by using two pointers, one moving at a slower pace and the other at a faster pace. When the faster pointer reaches the end of the list, the slower pointer will be pointing to the middle element. The time complexity of this operation is O(n), where n is the number of elements in the list.

Q: How can you merge two sorted linked lists into a single sorted linked list? What is the time complexity of this operation?

A: To merge two sorted linked lists into a single sorted linked list, we can compare the first element of each list and insert the smaller element into a new list. We then move the corresponding pointer to the next element in its list and repeat the process until both lists have been fully traversed. The time complexity of this operation is O(m+n), where m and n are the number of elements in the two lists.

Q: How can you implement a stack using a linked list? What is the time complexity of the push and pop operations?

A: To implement a stack using a linked list, we can use the head of the list as the top of the stack. The push operation involves inserting a new element at the head of the list, and the pop operation involves removing the element at the head of the list. The time complexity of both operations is O(1).

Q: How can you implement a queue using a linked list? What is the time complexity of the enqueue and dequeue operations?

A: To implement a queue using a linked list, we can use the head of the list as the front of the queue and the tail of the list as the rear of the queue. The enqueue operation involves inserting a new element at the tail of the list, and the dequeue operation involves removing the element at the head of the list. The time complexity of both operations is O(1).

Q: How can you remove duplicates from a linked list? What is the time complexity of this operation?

A: To remove duplicates from a linked list, we can use a hash table to keep track of the elements that we have seen so far. We traverse the list, and for each element, we check if it is in the hash table. If it is, we remove the element from the list. If it is not, we add it to the hash table. The time complexity of this operation is O(n), where n is the number of elements in the list.

Q: How can you find the kth element from the end of a linked list? What is the time complexity of this operation?

A: One way to find the kth element from the end of a linked list is by using two pointers, one moving k nodes ahead of the other. We then move both pointers at the same pace until the second pointer reaches the end of the list. The first pointer will be pointing to the kth element from the end. The time complexity of this operation is O(n), where n is the number of elements in the list.