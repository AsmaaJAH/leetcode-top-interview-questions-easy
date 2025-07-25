/*
Implement strStr()

Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

 

Example 1:

Input: haystack = "sadbutsad", needle = "sad"
Output: 0
Explanation: "sad" occurs at index 0 and 6.
The first occurrence is at index 0, so we return 0.
Example 2:

Input: haystack = "leetcode", needle = "leeto"
Output: -1
Explanation: "leeto" did not occur in "leetcode", so we return -1.
 

Constraints:

1 <= haystack.length, needle.length <= 104
haystack and needle consist of only lowercase English characters.

 */
class Solution {
  int strStr(String haystack, String needle) {
    if (needle.isEmpty || needle.length > haystack.length ) return -1;
    int firstIndex= 0;
      while( needle!= haystack.substring(firstIndex, firstIndex+needle.length)){
          firstIndex++;
        if(firstIndex ==haystack.length) return -1;
        if(firstIndex + needle.length-1 >= haystack.length) return -1;
      }
     return firstIndex;

  }
}