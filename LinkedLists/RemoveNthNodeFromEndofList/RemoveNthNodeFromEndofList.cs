/*
Remove Nth Node From End of List

Given the head of a linked list, remove the nth node from the end of the list and return its head.

 

Example 1:


Input: head = [1,2,3,4,5], n = 2
Output: [1,2,3,5]
Example 2:

Input: head = [1], n = 1
Output: []
Example 3:

Input: head = [1,2], n = 1
Output: [1]
 

Constraints:

The number of nodes in the list is sz.
1 <= sz <= 30
0 <= Node.val <= 100
1 <= n <= sz
 

Follow up: Could you do this in one pass?

   Hide Hint #1  
Maintain two pointers and update one with a delay of n steps.
*/






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
    public ListNode RemoveNthFromEnd(ListNode head, int n) {
        ListNode node= head;
        int count=1;
        while(node.next !=null){
            node=node.next;
            count++;
        }
        if(count ==1 && n==1 ) return null;
        ListNode current= head;
        for(int i=0; i<=count-n; i++){
            if(i==count-n-1 && current.next.next ==null){
              current.next=  null;
              break;  
            }
            if(i==count-n && current.next !=null){
              current.val=  current.next.val;
              current.next=  current.next.next;
              break;
            }
            current=current.next;
        }

        return head;
        
    }
}