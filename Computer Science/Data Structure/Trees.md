## Tree as a Part of Data Structure

Tree is a non-linear data structure that is used to represent hierarchical relationships between elements. It consists of a set of nodes linked together in a specific way, such that each node has a parent and zero or more children. In this section, we will explore the concepts of trees, including their definitions, operations, and examples in various programming languages.

### Definitions

1. Node: A node is a fundamental unit of a tree that contains data and links to its children and parent nodes.

2. Root: The root of a tree is the topmost node, which has no parent.

3. Leaf: A leaf node is a node with no children.

4. Parent: A parent node is a node that has one or more child nodes.

5. Child: A child node is a node that has a parent node.

6. Sibling: Sibling nodes are nodes that have the same parent.

### Operations

1. Insertion: Insertion operation is used to add a new node to a tree.

2. Deletion: Deletion operation is used to remove a node from a tree.

3. Traversal: Traversal operation is used to visit each node in a tree.

4. Searching: Searching operation is used to find a specific node in a tree.

### Examples in C, C++, Python

#### C

```c
#include <stdio.h>
#include <stdlib.h>

struct node {
    int data;
    struct node *left;
    struct node *right;
};

struct node *create_node(int data) {
    struct node *new_node = (struct node*)malloc(sizeof(struct node));
    new_node->data = data;
    new_node->left = NULL;
    new_node->right = NULL;
    return new_node;
}

int main() {
    struct node *root = create_node(1);
    root->left = create_node(2);
    root->right = create_node(3);
    root->left->left = create_node(4);
    root->left->right = create_node(5);
    return 0;
}
```

#### C++

```cpp
#include <iostream>
using namespace std;

class Node {
public:
    int data;
    Node *left;
    Node *right;

    Node(int data) {
        this->data = data;
        left = right = NULL;
    }
};

int main() {
    Node *root = new Node(1);
    root->left = new Node(2);
    root->right = new Node(3);
    root->left->left = new Node(4);
    root->left->right = new Node(5);
    return 0;
}
```

#### Python

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None

if __name__ == '__main__':
    root = Node(1)
    root.left = Node(2)
    root.right = Node(3)
    root.left.left = Node(4)
    root.left.right = Node(5)
```

### Examples of Q&A for University Exams

1. What is a tree in data structure? Explain its properties and uses.

2. What is the difference between a binary tree and a binary search tree?

3. What is a depth-first search? Write an algorithm to perform a depth-first search on a binary tree.

4. What is a breadth-first search? Write an algorithm to perform a breadth-first search on a binary tree.

5. What is the time complexity of inserting an element in a binary search tree?

6. What is a self-balancing binary search tree? Explain its advantages and disadvantages.

7. What is Huffman coding? Explain how it can be used to compress data.

8. What is a B-tree? Explain its properties and uses.

9. What is a trie? Explain its properties and uses.

10. What is an AVL tree? Explain how it maintains its balance.

These types of questions can be asked in university exams to test students' understanding of tree data structures.