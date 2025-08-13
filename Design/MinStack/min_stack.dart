/*
Min Stack

Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

Implement the MinStack class:

MinStack() initializes the stack object.
void push(int val) pushes the element val onto the stack.
void pop() removes the element on the top of the stack.
int top() gets the top element of the stack.
int getMin() retrieves the minimum element in the stack.
You must implement a solution with O(1) time complexity for each function.

 

Example 1:

Input
["MinStack","push","push","push","getMin","pop","top","getMin"]
[[],[-2],[0],[-3],[],[],[],[]]

Output
[null,null,null,null,-3,null,0,-2]

Explanation
MinStack minStack = new MinStack();
minStack.push(-2);
minStack.push(0);
minStack.push(-3);
minStack.getMin(); // return -3
minStack.pop();
minStack.top();    // return 0
minStack.getMin(); // return -2
 

Constraints:

-231 <= val <= 231 - 1
Methods pop, top and getMin operations will always be called on non-empty stacks.
At most 3 * 104 calls will be made to push, pop, top, and getMin.


*/

class MinStack {
  late List<int> _stack;
  late List<int> _minStackLogs;

  MinStack() {
    _stack = [];
    _minStackLogs = [];
  }

  void push(int val) {
    _stack.add(val);
    if (_minStackLogs.isEmpty || val <= _minStackLogs.last) {
      _minStackLogs.add(val);
    } else {
      _minStackLogs.add(_minStackLogs.last);
    }
  }

  void pop() {
    _stack.removeLast();
    _minStackLogs.removeLast();
  }

  int top() {
    return _stack.last;
  }

  int getMin() {
    return _minStackLogs.last;
  }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * MinStack obj = MinStack();
 * obj.push(val);
 * obj.pop();
 * int param3 = obj.top();
 * int param4 = obj.getMin();
 */