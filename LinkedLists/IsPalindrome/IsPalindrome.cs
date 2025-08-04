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






/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public int val;
 *     public ListNode next;
 *     public ListNode(int val=0, ListNode next=null) {
 *         this.val = val;
 *         this.next = next;
 *     }
 * }
 */
public class Solution {
    public bool IsPalindrome(ListNode head) {
        ListNode node=head;
        List<int> array = new List<int>();
        while(node!=null){
            array.Add(node.val);
            node= node.next;
        }
        int left=0;
        int right= array.Count-1;
        while(left<right){
            if(array[left]!= array[right]) return false;
            left ++;
            right --;
        }
        return true;
    }
}