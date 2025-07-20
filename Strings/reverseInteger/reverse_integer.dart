/*

Reverse Integer

Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

 

Example 1:

Input: x = 123
Output: 321
Example 2:

Input: x = -123
Output: -321
Example 3:

Input: x = 120
Output: 21
 

Constraints:

-231 <= x <= 231 - 1

 */
import 'dart:math';

class Solution {
  int reverse(int x) {
    String input= x.toString();
    List<String> xInput= input.split("");
    int left=0;
    int right = input.length-1;
    if(xInput[left]=='-') {
        left=1;
    }
    while(left<right){
    String temp= xInput[left];
       xInput[left]=xInput[right];
        xInput[right]=temp;
        left++;
        right--;
    }
String output ="";
      for(String char in xInput){
          output+=char;
      }
    int xOutput= int.tryParse(output)?? 0;
    if(xOutput>pow(2,31) ||xOutput< -pow(2,31) ) xOutput=0;
      return xOutput;
  }
}