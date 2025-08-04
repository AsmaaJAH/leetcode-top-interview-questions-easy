// Palindrome Linked List

// Given the head of a singly linked list, return true if it is a palindrome or false otherwise.

 

// Example 1:


// Input: head = [1,2,2,1]
// Output: true
// Example 2:


// Input: head = [1,2]
// Output: false
 

// Constraints:

// The number of nodes in the list is in the range [1, 105].
// 0 <= Node.val <= 9
 

// Follow up: Could you do it in O(n) time and O(1) space?



// Definition for singly-linked list.
class ListNode {
    int val;
    ListNode? next;
    ListNode([this.val = 0, this.next]);
}

class Solution {
  bool isPalindrome(ListNode? head) {
    if (head == null || head.next == null) {
      return true; 
    }

    // Step 1: Find the middle of the linked list
    ListNode? slow = head;
    ListNode? fast = head;

    while (fast?.next != null && fast?.next?.next != null) {
      slow = slow?.next;
      fast = fast?.next?.next;
    }


    // Step 2: Reverse the second half of the linked list
    ListNode? secondHalfHead = reverseList(slow?.next);
    slow?.next = null; 

    // Step 3: Compare the first half with the reversed second half
    ListNode? p1 = head;
    ListNode? p2 = secondHalfHead;

    while (p1 != null && p2 != null) {
      if (p1.val != p2.val) {
        return false;
      }
      p1 = p1.next;
      p2 = p2.next;
      if(p1==null && p2!=null){
          if(p2.next !=null ) return false;
      }
     
      if(p2==null && p1!=null){
          if(p1.next !=null ) return false;
      }
    }
    return true;
  }

  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    ListNode? current = head;
    while (current != null) {
      ListNode? nextTemp = current.next;
      current.next = prev;
      prev = current;
      current = nextTemp;
    }
    return prev; 
  }
}