/*

Power of Three

Given an integer n, return true if it is a power of three. Otherwise, return false.

An integer n is a power of three, if there exists an integer x such that n == 3x.

 

Example 1:

Input: n = 27
Output: true
Explanation: 27 = 33
Example 2:

Input: n = 0
Output: false
Explanation: There is no x where 3x = 0.
Example 3:

Input: n = -1
Output: false
Explanation: There is no x where 3x = (-1).
 

Constraints:

-231 <= n <= 231 - 1
 

Follow up: Could you solve it without loops/recursion?

*/
import 'dart:math';
class Solution {

  bool isPowerOfThree(int n) {
    if ( n <= 0) return false; // negative numbers can not be multiple of 3, they are multiple of -3, because for example: 3^-1=1/3 
    //n=3^x
    //log n= xlog3
    // x=logn/log3
    double logVal = log(n) / log(3);
    return (logVal - logVal.round()).abs() < 1e-10;
  }
}
/*
// Another solution:
  class Solution {
    bool isPowerOfThree(int n) {
      if (n < 1) return false;
      
      while (n % 3 == 0) {
        n ~/= 3;
      }

      return n == 1;
    }
  }
*/