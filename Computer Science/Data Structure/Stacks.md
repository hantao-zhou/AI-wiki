# Stacks as a Part of Data Structure

A stack is a data structure that follows the Last-In-First-Out (LIFO) principle. This means that the last item added to the stack will be the first item removed from the stack. Stacks are used in many different applications, such as parsing expressions, backtracking algorithms, and more.

### Examples in C

Here is an example implementation of a stack in C using an array:

```c
#define MAX_SIZE 100

int stack[MAX_SIZE];
int top = -1;

void push(int item) {
    if (top >= MAX_SIZE - 1) {
        printf("Error: Stack Overflow\n");
        return;
    }
    stack[++top] = item;
}

int pop() {
    if (top < 0) {
        printf("Error: Stack Underflow\n");
        return -1;
    }
    return stack[top--];
}

int peek() {
    if (top < 0) {
        printf("Error: Stack Underflow\n");
        return -1;
    }
    return stack[top];
}

int is_empty() {
    return top < 0;
}
```

### Examples in C++

Here is an example implementation of a stack in C++ using a linked list:

```cpp
template <typename T>
class Stack {
private:
    struct Node {
        T data;
        Node* next;
        Node(T d) : data(d), next(nullptr) {}
    };
    Node* top;
public:
    Stack() : top(nullptr) {}
    void push(T item) {
        Node* new_node = new Node(item);
        new_node->next = top;
        top = new_node;
    }
    T pop() {
        if (top == nullptr) {
            throw std::out_of_range("Error: Stack Underflow");
        }
        T item = top->data;
        Node* temp = top;
        top = top->next;
        delete temp;
        return item;
    }
    T peek() {
        if (top == nullptr) {
            throw std::out_of_range("Error: Stack Underflow");
        }
        return top->data;
    }
    bool is_empty() {
        return top == nullptr;
    }
};
```

### Examples in Python

Here is an example implementation of a stack in Python using a list:

```python
class Stack:
    def __init__(self):
        self.stack = []

    def push(self, item):
        self.stack.append(item)

    def pop(self):
        if self.is_empty():
            raise Exception("Error: Stack Underflow")
        return self.stack.pop()

    def peek(self):
        if self.is_empty():
            raise Exception("Error: Stack Underflow")
        return self.stack[-1]

    def is_empty(self):
        return len(self.stack) == 0
```

### Examples of Q&A for University Exams

1. What is a stack and what is its LIFO property?
2. What is the difference between a stack and a queue?
3. How can you implement a stack using an array? What is the time complexity of the push and pop operations?
4. How can you implement a stack using a linked list? What is the time complexity of the push and pop operations?
5. What is a stack frame and how is it used in function calls?
6. How can you use a stack to evaluate postfix expressions?
7. How can you use a stack to convert an infix expression to a postfix expression?
8. What is the maximum number of elements that can be stored in a stack implemented using an array of size n?
9. How can you use a stack to implement a backtracking algorithm?
10. How can you use a stack to implement undo/redo functionality in a text editor?

#### answer

1. A stack is a data structure that follows the Last-In-First-Out (LIFO) principle, where the last item added to the stack will be the first item removed from the stack. This means that elements are added to and removed from the same end of the stack.
2. The main difference between a stack and a queue is that a stack follows the LIFO principle while a queue follows the First-In-First-Out (FIFO) principle. In a stack, the last element added is the first one to be removed, while in a queue, the first element added is the first one to be removed.
3. To implement a stack using an array, we can use the array to store the elements and a variable to keep track of the top of the stack. The time complexity of the push and pop operations is O(1).
4. To implement a stack using a linked list, we can use the head of the list as the top of the stack. The push operation involves inserting a new element at the head of the list, and the pop operation involves removing the element at the head of the list. The time complexity of the push and pop operations is O(1).
5. A stack frame is a memory allocation on the stack that stores information about a function call, such as the function's arguments, local variables, and return address. When a function is called, a new stack frame is created, and when the function returns, the stack frame is destroyed. Stack frames are used to keep track of the call stack and to support function calls and returns.
6. To evaluate a postfix expression using a stack, we scan the expression from left to right and push operands onto the stack. Whenever we encounter an operator, we pop the top two operands from the stack, apply the operator to them, and push the result back onto the stack. The final result is the top of the stack.
7. To convert an infix expression to a postfix expression using a stack, we scan the expression from left to right and push operators onto the stack. Whenever we encounter an operand, we output it to the postfix expression. Whenever we encounter an operator, we compare its precedence with the top of the stack. If the operator has higher precedence, we push it onto the stack. If the operator has equal or lower precedence, we pop all operators from the stack with higher or equal precedence and output them to the postfix expression, then push the current operator onto the stack. After scanning the entire expression, we pop all remaining operators from the stack and output them to the postfix expression.
8. The maximum number of elements that can be stored in a stack implemented using an array of size n is n.
9. Backtracking algorithms involve exploring all possible paths to find a solution. To implement a backtracking algorithm using a stack, we push the initial state onto the stack and loop until the stack is empty. In each iteration, we pop the top state from the stack, generate all possible next states, and push them onto the stack. We continue until we find a solution or exhaust all possible paths.
10. To implement undo/redo functionality in a text editor using a stack, we can use two stacks, one for the undo history and one for the redo history. Whenever a change is made, we push the previous state onto the undo stack. Whenever an undo operation is performed, we pop the top state from the undo stack and push it onto the redo stack. Whenever a redo operation is performed, we pop the top state from the redo stack and push it onto the undo stack.